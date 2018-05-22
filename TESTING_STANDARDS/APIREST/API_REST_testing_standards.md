#API REST testing standards


1) Test your API with Postman

	1.1) Create a new Postman Collection by clicking the "New" button (the collection should have the service name). We are going to create one collection per service

	1.2) Create one folder for each "workflow" the service has

		"...For simple tests that only require a single API call, there's no need for folders. You can simply create requests directly under the collection folder...

		...Workflows: For example, your API might have a checkout flow that involves separate calls to create an order from a shopping cart, enter the shipping address, select the shipment method, and submit the payment information. In this case, you'd create a "workflow" folder named something like "Checkout" that contains the three requests."
		(Source: http://blog.getpostman.com/2017/07/28/api-testing-tips-from-a-postman-professional/)


	1.3) Add an enviroment

		"Environments are a group of variables & values, that allow you to quickly switch the context for your requests and collections."

		You can call all of these variables from any of the requests where you choose that enviroment where the variables are defined.


	1.4) Create a new request:
		- The first request you need to create, is the "Postman BDD request":
			1. Create a GET request in Postman and point it to the following URL:
				http://bigstickcarpet.com/postman-bdd/dist/postman-bdd.min.js

			2.  In the same request that you created in Step 1, go to the "Tests" tab and add the following script:
				// "install" Postman BDD
				postman.setGlobalVariable('postmanBDD', responseBody);
		- Now create a new request inside the folder you just created. 
		- Write the URL and the type of request, click on the "Send" button to verify your URL is correct
		- Set a new enviroment variable: click on the "Manage Enviroments" button (it looks like a gear, it is on the right of the eye ("Enviroment quick look" button)), then add a new key and value for the URL.
		- On the URL box, instead of the URL itself write the name of the variable you just created, like this -> {{VARIABLE}}
		- If you need to set entry params, you can set them on the "Pre-req." tab or directly inside the environment


	1.5) Write tests	
		
		Before writing tests:

		- Tests are written inside the Test tab, there you can add JavaScript code for testing your API.
		- Thanks to Postman BDD you can write Postman tests using Mocha's BDD syntax

		- On the right side of the test and the pre-req. box, you can see a list of snippets. However, as we are going to use the Mocha's BDD syntax, we'll use them only like a "where to start" guide for testing APIs

		- Try to reuse code. For example, you can use the eval() function like -> 'eval(<globalVariableWhereTestIsStored>)() '. There's no limit to the amount of code that can be stored in a variable and reused this way.

		- Use the Postman collection runner before exporting the collection

		- If it's necessary use the 'pm.setNextRequest()' function to change the order your requests are running.

		- Use the description fields to document your tests

		
		Writing Tests:
		
		- Load Postman BDD with: 
			eval(globals.postmanBDD);

		- Now you can write tests using BDD syntax and Chai-JS assertions. More info: http://www.chaijs.com/api/bdd/
		
		'''
		response object
		The response object is what you'll be doing most of your assertions on. It contains all the information about your HTTP response, such as response.text, response.body, response.status, and even a few shortcut properties like response.ok and response.error.


		expect and should assertions
		You can use any of the Chai-HTTP assertions via Chai's expect interface or should interface. It's just a matter of personal preference. For example, the following two assertions are identical:

		// expect interface
		expect(response).to.have.header('content-type', 'application/json');

		// should interface
		response.should.have.header('content-type', 'application/json');
		'''

		- Tests format should have this structure:

			'''
			describe('First validations', () => {

				it('should return a valid response', () => {
					response.should.have.status(200);
				});

				it('Should be JSON', () => {
					response.should.be.json;		  
				});

				it('Response body shouldn't be empty', () => {
					response.body.should.not.be.empty;	  
				});

			});
			'''

		- If your requests or responses' structure are defined with JSON objects, validate the JSON Schema with the tv4 library. Writing 'const customerSchema = {<JSONSchema>}' and then comparing both JSONs with tv4.validate(<responseJSON>, <JSONSchema>);
		It should look like this:
		
		'''
		// Define the JSON Schema
		const customerSchema = {
		  "required": ["id"],
		  "properties": {
		    "id": {
		      "type": "integer",
		      "minimum": 100,
		      "maximum": 1000
		    },
		    "name": {
		      "type": "string",
		      "minLength": 1,
		      "maxLength": 25
		    }
		  }
		};

		// Test whether the response matches the schema
		var customer = JSON.parse(responseBody);
		tests["Customer is valid"] = tv4.validate(customer, customerSchema);

		'''

		
	1.6) Test your requests

		- Test request by request to make sure your scripts are OK

		- Once all of your tests are written, use the Collection Runner to run the entire collection. Use the "Runner" button to do this.

	
	1.7) Export

		Once you've finished writting test scripts and want to include them on the project, all you have to do is export the Postman collection and the Enviroment(s) you want to use. Save them inside a "test" folder inside the service folder.

	
	1.8) Write a Dockerfile for running the collection so it can be run automatically from Jenkins

		Here is an example of that Dockerfile:
		
		'''	
		FROM node:7.8-slim

		# App workdir
		WORKDIR /app

		# Install dependecies
		RUN npm install -g newman
		RUN npm --allow-root install

		# Build app source code
		COPY . ./

		CMD newman run testDockerExercise.postman_collection.json
		'''
		

Some useful links for writing API tests: 

*Postman BDD*
https://github.com/BigstickCarpet/postman-bdd/#features--benefits

*Chai Assertion Library*
http://www.chaijs.com/api/bdd/
		
