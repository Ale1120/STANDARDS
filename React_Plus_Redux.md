# Coding Standards for React Native 
 
## 1) Introduction 
 
 Coding Standards are an important factor for achieving a high code quality. A common visual style, naming conventions and 
 other technical settings allow us to produce a homogenous code which is easy to read and maintain. However, not all-important 
 factors can be covered by rules and coding standards. Equally important is the style in which certain problems are solved 
 programmatically - it’s the personality and experience of the individual developer which shines through and ultimately makes
 the difference between technically okay code or a well-considered, mature solution. 
 
 
**1.1) Document Conventions**

       
|Keywords  |                                                                                 |
| -------- | --------                                                                        |
| Always   | Emphasizes this rule must be enforced.                                          |
| Never    | Emphasizes this action must not happen.                                         |
| Do not   | Emphasizes this action must not happen.                                         |
| Avoid    | Emphasizes that the action should be prevented, but some exceptions may exist.  |
| Try      | Emphasizes that the rule should be attempted whenever possible and appropriate. |
| Example  | Precedes text used to illustrate a rule or recommendation.                      |
| Reason   | Explains the thoughts and purpose behind a rule or recommendation.              |
      
      
      
**1.2)  Terminology & Definitions**

    
         The following terminology is referenced throughout this document: 
          
          
**1.2.1) Extensions**


         Use .js extension for React Native components. 
          
          
**1.2.2) Props**


         Lets you make a single component that is used in many different places in your app, with slightly different 
         properties in each place.  
          
          
**1.2.3) State**

          
        Used for data that is going to change. 
          
          
**1.2.4) Camel Case**

          
        A word with the first letter lowercase, and the first letter of each subsequent word-part capitalized.
                
        Example: customerName  


**1.2.5) Common Type System**

          
        The React & React Native Framework common type system (CTS) defines how types are declared, used, and managed.  
        All native React & React Native types, props, components and resources are based upon the CTS to ensure support 
        for cross-language integration.   
          
          
**1.2.6) Identifier**

          
        A developer defined token used to uniquely name a declared object or object instance.  
                
        Example: class MyMethodNameIdentifier extends Component { … }  
          
          
**1.2.7) Pascal Case**   

          
        A word with the first letter capitalized, and the first letter of each subsequent word-part capitalized. 
                
        Example: ReactNative 
                
                
**1.3) High-Level Summary**

        
**1.3.1) Naming Conventions**


            
| “C”  | camelCase              | 
| -----|----------------------  | 
|   =  |                        | 
| “P”  |PascalCase              | 
|   =  |                        |
| “_”  | Prefix with _Underscore| 
|   =  |                        |
| “x”  | Not Applicable.        | 
|   =  |                        | 
            
            
            
            
| Identifier          | Naming Conventions    | Notes                                                |
|:-------------       |:----------------------|:-----------------------------------------------------|
| Project File        | P                     |Match Assembly & Namespace.                           |
| Source File         | P                     |Match contained class.                                |
| Other Files         | P                     |Apply where possible                                  |  
| Class or Struct     | P                     |Add suffix of subclass.                               |
| Interface           | P                     |Prefix with a capital I.                              |  
| Property and Methods| P                     |Use a Verb or Verb-Object pair.                       |  
| Field               | C                     |No Hungarian Notation!                                |  
| Inline Variable     | C                     |Avoid single-character and enumerated names.          |  
| Constant            | _C                    |                                                      |  
| Service             | P                     | Do suffix a service class name with Servic           |  
| Component           | P                     | Do suffix a service class name with Component        |  
| Directives          | C                     | Do use a custom prefix for the selector of directives|  
| Pipe                | C                     |                                                      |  
| Parameter           | C                     |.                                                     |  
            
            
    
    
**1.3.2) Coding Style**


        
|Code        | Style                                             | 
|:-----------|:--------------------------------------------------| 
|Curly Braces|One Namespace per file and one class per file.     | 
|Indention   |On new line. Always use braces when optional.      |                       
|Comments    |Use // or /// but not /* … */ and do not flowerbox.| 
|Variables   |One variable per declaration.                      | 
            
            
            
**2) Pattern SRP**   

    
     Define 1 component per file, recommended to be led than 400 lines of code. 
       
    - Why?:One component per file promotes easier unit testing and mocking. 
    - Why?:One component per file makes it far easier to read, maintain, and avoid collisions with teams in source control. 
    - Why?:One component per file avoids hidden bugs that often arise when combining components in a file where they may
       share variables, create unwanted closures, or unwanted coupling with dependencies. 


**3) Naming Conventions**

    
     Consistency is the key to maintainable code. This statement is most true for naming your projects, source files,and
     identifiers including Fields, Variables, Properties, Methods, Prameters, Classes, Interfaces, and Namespaces. 
        
        
**3.1) General Guidelines** 

        
       1. Always use Camel Case or Pascal Case names. 
       2. Avoid ALL CAPS and all lowercase names. Single lowercase words or letters are acceptable. 
       3. Do not use names that begin with a numeric character. 
       4. Always choose meaningful and specific names 
       5. Variables and Properties should describe an entity not the type or size. 
       6. Do not use Hungarian Notation! 
       7. Avoid using abbreviations unless the full name is excessive. 
       8. Avoid Abbreviations longer than 5 characters.  
       9. Any Abbreviations must be widely known and accepted. 
      10. Use uppercase for two-letter abbreviations, and Pascal Case for longer abbreviations. 
       
       
**3.2) Separate file names with dots and dashes**

        
       1. Do use dots to separate the descriptive name from the type. 
       2. Do use consistent type names for all components following a pattern that describes the components' feature 
            then its type. 
       3. Do use conventional type names including  .service, .component, .pipe, .module, and .directive. Invent 
            additional type names if you must but take care not to create too many. 


**3.3) Service name**

        
       1.Do use consistent names for all services named after their feature 
       2.Do suffix a service class name with Service. 
            
            
**4) Coding Conventions**

    
**4.1) Classes**

    
       Do use pascal case when naming classes. 
       Example:
       
       
![1](http://190.123.46.35/ILM/STANDARDS/uploads/8d1db84043a34504ff52691641992487/1.png)
        
        
**4.2 Exception**
        
        
      1. Always use try/ catch blocks for flow-control
      2. Never declare an empty catch block.
      3. Always catch the most derived exception via exception filters.
      4. The exception always work with Sentry that is a tracking error, for declare the correct exception


**a. Install**
            
            
     i. $ npm install react-native-sentry --save
        or$ react-native link react-native-sentry
               
                    
**b. Client Configuration**
            
            
     i. When you run react-native link we will automatically update your index.ios.js / index.android.js with the 
        following changes:

        Showing configuration for:
        
        Example DSN:
        
        Import { Sentry } from 'react-native-sentry';Sentry.config('https://<key>:<secret>@sentry.io/<project>').install();
        
        
**c. You can pass additional configuration options to the config() method if you want to do so**
            
            
        i. The code must have unit test for each method for that we could use jest (https://medium.com/@jcfrancisco/
           unit-testing-react-native-components-a-firsthand-guide-cea561df242b).
                
                
        ii. The code will submitted to stress tests and if this test fail, it will be returned to the developer, 
                because we need to get software that allows the system to be free of overload, for this we are going to use 
                UI Load.
                
                
        iii. The code should be free of any kind of potential risk of SQL, XML, etc, injections.
        
        
        iv. For each project there will be a test that will be running on Jenkins. (Selenium, mocha, etc).
         
         
                
**4.3) Constants**


1. Do declare variables with const if their values should not change during the application lifetime. 
2. Consider spelling const variables in camel case and use the underscore.        
            
           
![2](http://190.123.46.35/ILM/STANDARDS/uploads/4c04203caf2e18fec929dddb50a4720b/2.png)

                
**4.4) Interfaces**  

        
1. Do name an interface using pascal case. 
2. Consider naming an interface with a I prefix. 
3. Consider using a class instead of an interface.
           
           
![3](http://190.123.46.35/ILM/STANDARDS/uploads/e62edf5832f1d8b77e317425aff91eb3/3.png)   
            
            
**4.5) Properties and methods**
        
        
1. Do use pascal case to name properties and methods. 
2. Avoid prefixing private properties and methods with an underscore.

            
![4](http://190.123.46.35/ILM/STANDARDS/uploads/80e7cefd76e24f8e4216faea1df13801/4.png)


**4.6) Import line spacing**


1. Consider leaving one empty line between third part import and application imports. 
2. Consider listing import line alphabetized by the module
3. Consider listing destructed imported symbols alphabetically. 

         
![5](http://190.123.46.35/ILM/STANDARDS/uploads/33681357e4008d6bb39449ab1f1349f3/5.png)


**5) Documentation Blocks**


A file contains different documentations blocks, relating to the class in the file and the members of the class, A 
documentation block is always used for the entity it precedes. 


**5.1) Class documentation**


Classes have their own documentation block describing the classes purpose. Standard documentation block:


          
![6](http://190.123.46.35/ILM/STANDARDS/uploads/5b6e4d7b96d29fbead2570825e470f2e/6.png)


**5.2) Documenting variables, constants, includes**


Properties of a class should be documented as well. We use the short version for documenting them. Standard documentation 
block:


            
![7](http://190.123.46.35/ILM/STANDARDS/uploads/3211fe7ba977bc5760c85496110441cf/7.png)



**5.3) Method documentation**


For a method, at least all parameters and the return value must be documented. Standard documented. 
Standard method documentation block:


![1](http://190.123.46.35/ILM/STANDARDS/uploads/f7c9e9b90438c7adaedfeb9a92035027/1.png)


**6) React Native**


**6.1) Basic Rules**


* Only include one React component per file 
* Always use JSX syntax
* If something is commented within a View or ScrollView, it should be commented as follows: { /*comment*/} 
* Do not "flowerbox" comment blocks.

Example:

```
//*****************************
//Comment block
//*****************************
```

* Use inline-comments to explain assumptions, know issues, and algorithm insights.
* Do not use inline-comments to explain obvious code. Well written code is self documenting.
* Only use comments for bad code to say "fix this code" -otherwise remove or rewrite the code!
* Do not use names than begin whit a numeric character.
* Do not use React Native reserved words as names.
* Always choose meaningful and specific names.
* Use uppercase for two-letter abbreviations, and Pascal Case for longer abbreviations.
* Avoid using abbreviations unless the full name is excessive
* Avoid abbreviations longer than 5 characters.


**6.2) Mixins**

* Do not use mixins
Why? mixins introduce implicit dependencies, cause name clashes, and cause snowballing complexity. Most use cases for
mixins can be accomplished in better ways via component, higher- order components, or utility modules.


**6.3) Naming**


* Extensions:** Use .js extension for React Native components 
* Filename:** Use PascalCase for filenames.
* Example:** ReactNative.js.
* References Naming:** Use PascalCase for React Native components and camelCase for their instances.

![2](http://190.123.46.35/ILM/STANDARDS/uploads/e7f4fd99113c721a0d0e7fcb7c324f57/2.png)
                
                
**6.4) Component Naming**


* Use the filename as the component name 
For example, ReactNative.js. 
Should have a reference name of ReactNative. However, for root components of a directory, use for example rootReactNative,
because if use index.js it is less friendly form the programmer or the people who work with the code because it can be 
confused with all the indexes that could be had the application.


![component_naming](http://190.123.46.35/ILM/STANDARDS/uploads/2a11d85164c5455f63f8b9c286f3bd83/component_naming.png)
            


**6.5) Declaration**


* Do not use displayName for naming components. Instead, name the component by reference.


![4](http://190.123.46.35/ILM/STANDARDS/uploads/8681c22c9a0f7a85e3e521f2c4f0616f/4.png)

                
**6.6) Alignment**

* Follow these aligment styles for JS syntax.


![5](http://190.123.46.35/ILM/STANDARDS/uploads/16e26b960acabe6f4dd71c5fd7a89e95/5.png)

                
**6.7) Quotes**


* Always use double quotes(") for JS attributes, but single quotes(') for all other JS.


![6](http://190.123.46.35/ILM/STANDARDS/uploads/5afd721423fd383eab1199b698fed7b3/6.png)

                
                
**6.8) Spacing**


* Always include a single in your self-closing tag.

![7](http://190.123.46.35/ILM/STANDARDS/uploads/a5701c9b8464496c1859db4cd2774535/7.png)
                
                
**6.9) Props**

* Always use camelCase for prop names.


![8](http://190.123.46.35/ILM/STANDARDS/uploads/93bbc79ea6bb62e87275e0598ace1aec/8.png)

                
* Omit the value of the prop when it is explicitly true.


![9](http://190.123.46.35/ILM/STANDARDS/uploads/f0fc6542f198ff907f3b9cade51a25ca/9.png)
                
                
* Always include an alt prop on <img> tags. If the image is presentational, alt can be an empty string or the <img> must
have role="presentation".


![10](http://190.123.46.35/ILM/STANDARDS/uploads/28f968e142d0fd6d1c29890cc89ae78c/10.png)
                  
                  
* Do not use words like "image", "photo", or "picture" in <img> alt props.
Why? Screenreaders already announce img elements as images, so there is no need to include this information in the alt text.


![11](http://190.123.46.35/ILM/STANDARDS/uploads/0d63b3c699e68fb6efcebd897c6ce97e/11.png)
                  
                  
* Do not use accessKey on elements.
Why? Inconsistencies between keyboard shortcuts and keyboard commands used by people using screenreaders and Keyboards 
complicate accessibility. Also, withReact Native is not practical no implement this.


![12](http://190.123.46.35/ILM/STANDARDS/uploads/5fe7f818aa6596e01b221b1df6335615/12.png)
                 
                 
* Always define explicit defaultProps for all non-required props.
Why? PropTypes are a form of documentation and providing default Props means the reader of your code doesn't have to assume
as much. In addition, it can mean that your code can omit certain type checks.


![13](http://190.123.46.35/ILM/STANDARDS/uploads/8666f734a5369cbe9f091729831b989a/13.png)
                 
    
**6.10) Refs**

* Always use ref callbacks.


![14](http://190.123.46.35/ILM/STANDARDS/uploads/d22103a06e5c0843a55ff3313349ec79/14.png)
        
        
**6.11) Parentheses**

* Wrap tags in parentheses when they span more than one line.


![15](http://190.123.46.35/ILM/STANDARDS/uploads/6cbd5384e72c19d3b83eb055a1a42ddc/15.png)

                
**6.12) Tags**

* Always self-close tags that have no children


![16](http://190.123.46.35/ILM/STANDARDS/uploads/2f8c21b27cd239b1c192c7ec2a8555a9/16.png)

                
* If your component has multi-line properties, close its tag on a new line.
                 

![17](http://190.123.46.35/ILM/STANDARDS/uploads/bccf3ef88ae1ae9d3b54fc1010d8ca19/17.png)
                
                
**6.13) Methods**

*Use arrow functions to close over local variables.


![18](http://190.123.46.35/ILM/STANDARDS/uploads/474c08f46a0773a6da9651c033e61e40/18.png)


                
* Bind event handlers for the render method in the constructor.
Why? A bind call in the render path creates a brand new function on every single render.


![19](http://190.123.46.35/ILM/STANDARDS/uploads/82a048b6d26068d4cc3ee9275c81f4cd/19.png)
                
                
**6.14) Ordering** 

* Ordering for class React extends Component:


1. Optional static methods
2. Constuctor
3. GetChildContext
4. ComponentWillMount 
5. ComponentDidMount
6. ComponentWillReceiveProps
7. ShouldComponentUpdate
8. ComponentWillupdate
9. ComponentDidupdate
10. ComponentWillUnmont
11. ClickHandlers or eventhandlers like onClickSubmit() or onChangeDescription()
12. Getter methods for render like getSelectReason() or getFooterContent()
13. Optional render methods like renderNavigation() or renderProfilePicture()
14. Render


How to define propTypes, defaultProps, contextType, etc..

![20](http://190.123.46.35/ILM/STANDARDS/uploads/17b292245a4b73fd2628e070a8be3f32/20.png)
                    
* Ordering for React.createClass:


1. DisplayName
2. PropTypes
3. ContextTypes 
4. childContextTypes
5. Mixins 
6. Statics
7. DefaultProps
8. GetDefaultProps
9. GetInitialState
10. GetChildContext
11. ComponentWillMount
12. ComponentDidMount
13. ComponentWillReceiveProps
14. ShouldComponentUpdate
15. ComponentWillUpdate
16. ComponentDidUpdate
17. ComponentWillUnmount
18. ClickHandlers or eventhandlers like onClickSubmit() or onChangeDescription()
19. Getter methods for render like getSelectReason() or getFooterContent()
20. Optional render methods like renderNavigation() or renderProfilePicture()
21. Render


**7) Redux**

**7.1) Install**


React bindings are not included in Redux by default. You need to install them explicitly:


```
npm install --save react-redux
```


**7.2) Terminology, definitions and syntax**

* State: State (also called the state tree) is a broad term, but in the Redux API it usually refers to the single state
value that is managed by the store and returned by getState(). It represents the entire state of a Redux application, which 
is often a deeply nested object.


Example Syntax: 

* Actions: Actions are payloads of information that send data from your application to your store. They are the onlysource 
of information for the store. You send them to the store using store.dispatch() or using MapDispatchToProps() 


Example Syntax:


![21](http://190.123.46.35/ILM/STANDARDS/uploads/297f58d0398032e8965f8175476f6e5c/21.png)
                    
            
* Reducers: Reducers specify how the application's state changes in response to actions sent to the store. Remember that 
actions only describe the fact that something happened, but don't describe how the application's state changes.


Example Syntax:


![22](http://190.123.46.35/ILM/STANDARDS/uploads/6e82b74b93ce986c446e228fa655de4d/22.png)
                    
                    
* Store: In  the previous sections, we defined the actions that represent the facts about “what happened” and the reducers
that update the state according to those actions.



* Store creator: A store creator is a function that creates a Redux store. Like with dispatching function, we must
distinguish the base store creator, createStore(reducer, preloadedState) exported from the Redux package, from store creators
that are returned from the store enhancers. 


Example Syntax:


![23](http://190.123.46.35/ILM/STANDARDS/uploads/1ec264055abb080f161a9e6e2d1fef6d/23.png)

                 
                 
* Middleware: A middleware is a higher-order function that composes a dispatch function to return a new dispatch function.
It often turns async actions into actions.
Middleware is composable using function composition. It is useful for logging actions, performing side effects like routing, or turning an asynchronous API call into a series of synchronous actions.
See applyMiddleware(...middlewares) for a detailed look at middleware.


Example Syntax: 


![24](http://190.123.46.35/ILM/STANDARDS/uploads/ac1a10103557a381898535fddf658de1/24.png)
                
                
* Dispatching Function: A dispatching function (or simply dispatch function) is a function that accepts an action or an 
async action; it then may or may not dispatch one or more actions to the store.


Example Syntax:


![25](http://190.123.46.35/ILM/STANDARDS/uploads/6e177e0a62fb65941529ac26c32b7f0c/25.png)
                
                
                
* MapStateToProps(): needs to be a function. This function does exactly what the name suggests, connect state from the store 
to corresponding props. This make it possible to access your reducer state objects from within your React components. 


Example Syntax:


![26](http://190.123.46.35/ILM/STANDARDS/uploads/49aeff3600e42bcb3c4a6158b1fbad44/26.png)
                
                
* MapDispatchToProps(): Essentially the only way to update your store/state    is by using ‘dispatch’ with an action creator.


Example Syntax:


![27](http://190.123.46.35/ILM/STANDARDS/uploads/461172117e5e8fc351c49435340001cd/27.png)
                
                
* Connect(): connect to map the stores state and dispatch to the props of a component.


Example Syntax:


![28](http://190.123.46.35/ILM/STANDARDS/uploads/52e8cf0fb6cd526cea5a021466a5608e/28.png)

               
               
* combineReducers(reducers): The combineReducers helper function turns an object whose values are different reducing 
functions into a single reducing function you can pass to createStore.


Example Syntax:


![29](http://190.123.46.35/ILM/STANDARDS/uploads/ea5d92d756b08c9e1069c85bf0d0d5e1/29.png)
                 
                 
                 
**7.3) Structure**


![30](http://190.123.46.35/ILM/STANDARDS/uploads/dded6d4ebc03b0775370e79a27b204bd/30.png)