
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
Section: 1  


<paper-title>
Assignment 1: User Experience Improvement
</paper-title>

<hr>


<section>
<subtitle>
Application Information
<hr>
</subtitle>



<center>
<b>App Name:</b> <a href="https://tachiyomi.org">Tachiyomi</a>   

<b>App Platform:</b> Android
</center>

<subject>
What is Tachiyomi?
<hr>
</subject>
Tachiyomi is a open-source multi-server manga and comic reader/client. It serves as a client to many of the popular Manga and Comic reading sites on the web. It also allows you do download those manga to be read and filed into categories offline.

 
 </section>



<section>
<subtitle>
New Functionality 
<hr>
</subtitle>

<subject>
<b>Feature:</b> Tagging Database
</subject>

<hr>

The application itself does quite a bit by itself. It acts as a singular client to many different sites, and allows you to file each manga into a single or multiple categories. However this is has a very limited functionality. 

\
However there is a spin off/forked application [TachiJ2K](https://tachiyomi.org/forks/FTachiyomiJ2K) that has begun implementing tagging and into it's application features (with some bugs). Having this included into the main application would make it much easier to organize our comics & manga.


<subject>
<b>Feature:</b> Database Dump
<hr>
</subject>

This feature has more to add on the previous feature. Many apps like this use databases in order to store persistant data. In this case it would be possible to use this to create some workflows that would allow for metadata from each book be syncronized with another service and/or product. In cases like mine, I self host my own comic server [Komga](https://komga.org). Which allows for API access (and direct access to the database, as it is self-hosted) which would allow a workflow to be created that would syncronize metadata (that both support) back and forth as info is changed on either side. Which could also allow for further progress to be made that would allow for official integrations to be made in it's plugin for Tachiyomi.

<subject>
<b>Feature:</b> Open Url in Application
<hr>
</subject>

Currently the app supports opening the associated Book url in a browser to the site it is being hosted/scraped from. Which helps with sites have CAPCHAs that prevent you from getting access to the book until you complete them, to which you are then able to visit them within the app afterwards. However it would also be nice to be able to do the opposite. To add a url handler to the application that would check if it has a supported extension/site parser that could open the book from the link, as some people often do prefer looking on the website rather than in app, as these sites often have better search tools than the extensions created for Tachiyomi. In this case it is not unthought of, as this is already implemented in-app when using the extension (as the application is basically a front-end to extensible web-parser using JSoup), it would essentially be creating another handler that would make the correct calls to directly open the associated extensions book-view/page. 





</section>



<section>

<subtitle>
Visual
</subtitle>
<hr>

<subject>
<b>Visual Inprovement:</b> More Library Customization
<hr>
</subject>

This in particular references having more customization in how the users library is displayed. As being able to adjust the spacing and specifc component colors would go a long way in making the application feel more personal. However, for the actual visual presentation it has been polished to a very fine degree and is quite stunning as it is. This makes most complaints/comments to be more nit-picky than actual problems.

</section>





<section>
<subtitle>
Quality of Life :  
</subtitle>
<hr>


<subject>
<b>QOL Improvement: </b> Allow for seperate user modes
<hr>
</subject>

This is both a Feature and QOL improvemnt. With the amount of books/manga/comics that users can add to their library and read it often causes for there to be an overwhelming amount of books on display with no way to organize them (aside from adding them to catagories). However, even this does a rather poor job, as there is still no spearation between different books for different "modes". If there was a way to set catagories to only be shown when their associated "user mode" is set, it would dramatically made using the app more enjoyable. The only method I have been able to use to use the forked versions of the app to seperate my different comic/manga types as to cut down on the time it takes to search through my library.

\
This would likely involve changing the database schema and adding the necessary tables, foreign keys, and assocaitions to allow for the app to have the context necessary to know what catagories need to be shown in the current user-mode.


</section>