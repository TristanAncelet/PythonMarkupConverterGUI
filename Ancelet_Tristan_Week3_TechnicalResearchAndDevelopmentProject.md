<style>

.underlined {
    text-decoration: underline;
}

paper-title {
    display: block;
    margin: auto;
    max-width: fit-content;
    text-align: center;
    font-size:  30px;
    margin-bottom: 50px;
    text-decoration: underline;
}

subtitle {
    display: block;
    font-size:  20px;
    text-align: center;
}

section {
    display: block;
    /*border: 1px solid black;
    border-radius: 5px;*/
    padding: 20px;
    margin-top: 20px;
}

subject {
    display: block;
    margin-top: 40px;
    text-align: center;
}
</style>


Name: Tristan Ancelet  
Course: SDV4116-O  
Term: C202303  
Section: 01  

\
<paper-title> Technical Research & Development Project </paper-title>


For my project I will be creating a Markup Language Conversion Application. The technology that will be involved (at the start) is the following: Python and Markup Languages (ML). Python will be used to facilitate the conversion from one ML to another. The MLs are used to store data into a format that is easily transferable and parsible between different software and systems. To begin with, everything is just being used to create software that will be able to convert one ML to another. The end goal for the next iteration of this project however is to be able to setup a simple API server that would allow for one type of request to come in and be converted into another (REST/JSON -> SOAP/XML).

\
\
To begin with there are a few features that are planned for the first itteration of this project. For the start features will include:
- Cross Platform UI using Python & Kivy
- Cross-Converting many different Markup Languages
- UI/TUI/CLI independent markup conversion library
- A sqlite database to store different states of your conversion (as well as to allow for the user to view their history).

\
Using Kivy and Python I am able to create templated and functional UI that limits the ammount of actual code I need to type overall. This is due to kivy being a fully functional UI library with the option to template UI (like using XML in android studio) using Kivy's kv language. This optional language allows for templating the UI without needing to spend time creating UI elements using python code. Although creating actual python classes can extend the control the developer has on the way the UI functions and behaves. Another feature of this project would be the markup language conversion library. It is a library, written in python, that will be designed to be as extendable and pluggable as possible. This would allow the library to be used regardless of what it is interfacing with. Lastly another feature of the application would the persistant storage of the users history. This would allow them to be able to recall and recover previous states of the the conversion. Much like how git keeps tracks of changes in development projects.


\
\
Research that was done for this project was a few things: 
- The state of the industry today, and how software systems communicate with one another. 
- How systems collect and store service/billing information.


\
Nearly all industries and software are connected to the internet in some way or form. Many of these systems use API to tranfer data between themselves. These API often format data in different ways. Two of the most well know API are SOAP (which used XML) and REST (which uses JSON). Each type of API has their strong point.s


\
\
\
What has been built for this project so far:
- Rudimentary Front-End UI using Python3 and Kivy
- Beginnings of the conversion library
- Class based objects to glue UI and Backend togethor.


\
Thankfully this early into the project I have not had too many things go wrong yet. The most trouble I've experienced is the fickle nature of Kivy templated UI using the kv language. As when templating a element/widget that will be used multiple times there can be issues that may occur. One of the primary issues happens when specifiying a background color for the templated widget without the class being extended in python code, as it will only be applied to the last object that was created in the templated view. 

\
After my experiences developing this project so far I believe that this project is still very possible. As the technology around my project is both very modular and can be implemented reliably using OOP.



\
\
<subtitle> References </subtitle>

- GeeksforGeeks. (2022, August 29). Difference between REST API and SOAP API. https://www.geeksforgeeks.org/difference-between-rest-api-and-soap-api/
- Wikipedia contributors. (2023, February 21). Markup language. Wikipedia. https://en.wikipedia.org/wiki/Markup_language