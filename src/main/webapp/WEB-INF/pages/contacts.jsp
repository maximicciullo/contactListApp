<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
   
<html> 
    <head> 
    <title>ContactListApp</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.3/jquery.mobile-1.4.3.min.css" />
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.3/jquery.mobile-1.4.3.min.js"></script>
</head> 

<body>
<!--first page -->
<div data-role="page" id="info-page">
    <div data-role="header" data-theme="b">
         <h1> Contact List</h1>

    </div>
    <div data-role="content">
        <c:set var="info" scope="session" value="${model.contacts}"/>
        <ul data-role="listview" id="prof-list" data-filter="true" data-divider-theme="a" data-inset="true">
            <li data-role="list-divider" data-theme="b" role="heading">Your Contacts</li>
        </ul>
    </div>
</div>
<!--second page -->
<div data-role="page" id="details-page">
    <div data-role="header" data-theme="b"><a href="#" data-rel="back" data-role="button">Go back</a>

         <h1>Contact Details</h1>

    </div>
    <div data-role="content"></div>
</div>

<script>

//assuming this comes from an ajax call
//url: https://solstice.applauncher.com/external/contacts.json
//pagecreate event for first page
//triggers only once
//write all your on-load functions and event handlers pertaining to page1
$(document).on("pagecreate", "#info-page", function () {

	
	var info = <c:out value="${info}" escapeXml="false"/>;

    //set up string for adding <li/>
    var li = "";
    //container for $li to be added
    $.each(info, function (i, name) {
        //add the <li> to "li" variable
        //note the use of += in the variable
        //meaning I'm adding to the existing data. not replacing it.
        //store index value in array as id of the <a> tag
        //li += '<li><a href="#" id="' + i + '"class="info-go">' + name.name + '</a></li>';
        li += '<li><a href="#" id="' + i + '"class="info-go"><img src="' + name.smallImageURL + '" class="ui-li-thumb"><h3 class="ui-li-heading">' + name.name + '</h3><p class="ui-li-desc">' + name.phone.mobile + '</p></a></li>';
    });
    //append list to ul
    $("#prof-list").append(li).promise().done(function () {
        //wait for append to finish - thats why you use a promise()
        //done() will run after append is done
        //add the click event for the redirection to happen to #details-page
        $(this).on("click", ".info-go", function (e) {
            e.preventDefault();
            //store the information in the next page's data
            $("#details-page").data("info", info[this.id]);
            //change the page # to second page. 
            //Now the URL in the address bar will read index.html#details-page
            //where #details-page is the "id" of the second page
            //we're gonna redirect to that now using changePage() method
            $.mobile.changePage("#details-page");
        });

        //refresh list to enhance its styling.
        $(this).listview("refresh");
    });
});

//use pagebeforeshow
$(document).on("pagebeforeshow", "#details-page", function () {
    //get from data - you put this here when the "a" was clicked in the previous page
    var info = $(this).data("info");
    //string to put HTML in
    var info_view = "";
    //use for..in to iterate through object
    
    info_view += '<div class="ui-grid-a"><div class="ui-block-a"><div class="ui-bar field" style="font-weight : bold; text-align: left;"><img src="' + info.smallImageURL + '" class="ui-li-thumb"></div><div><h3>Phones</h3></div><div><h4>Work</h4>' + info.phone.work +'</div><div><h4>Home</h4><div><div> ' + info.phone.home +'<div><div><h4>Mobile</h4><div><div> ' + info.phone.mobile +'</div><div><h3>Address</h3></div><div> ' + info.phone.work +'</div></div><div class="ui-block-b"><div><h3>Name</h3></div><div> ' + info.name +'</div><div><h3>Company</h3></div><div> ' + info.company +' </div></div></div>';
    //add this to html
    $(this).find("[data-role=content]").html(info_view);
});

</script>

</body>
</html>