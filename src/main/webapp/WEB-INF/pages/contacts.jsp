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
var info = 
[
    {
        "name": "Essie Vaill",
        "employeeId":1,
        "company": "Litronic Industries",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/1.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image1_small.jpeg",
        "birthdate": "1382659557",
        "phone": {
            "work": "602-252-4827",
            "home": "602-252-4009",
            "mobile": "650-252-4010"
        }
    },
    {
        "name": "Cruz Roudabush",
        "employeeId":2,
        "company": "Meridian Products",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/2.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image2_small.jpeg",
        "birthdate": "558289857",
        "phone": {
            "work": "907-345-0962",
            "home": "907-345-1215",
            "mobile": "650-345-1220"
        }
    },
    {
        "name": "Billie Tinnes",
        "employeeId":3,
        "company": "D & M Plywood Inc",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/3.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image13_small.jpeg",
        "birthdate": "1284003057",
        "phone": {
            "work": "212-889-5775",
            "home": "212-889-5764",
            "mobile": "212-889-5780"
        }
    },
    {
        "name": "Zackary Mockus",
        "employeeId":4,
        "company": "Metropolitan Elevator Co",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/4.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image14_small.jpeg",
        "birthdate": "1325412813",
        "phone": {
            "work": "732-442-0638",
            "home": "732-442-5218",
            "mobile": "732-442-5220"
        }
    },
    {
        "name": "Rosemarie Fifield",
        "employeeId":5,
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/5.json",
        "company": "Technology Services",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image3_small.jpeg",
        "birthdate": "1323680461",
        "phone": {
            "work": "808-836-8966",
            "home": "808-836-6008",
            "mobile": "808-836-6080"
        }
    },
    {
        "name": "Bernard Laboy",
        "employeeId":6,
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/6.json",
        "company": "Century 21 Keewaydin Prop",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image15_small.jpeg",
        "birthdate": "1357020000",
        "phone": {
            "work": "815-467-1244",
            "home": "815-467-0487",
            "mobile": "815-467-5007"
        }
    },
    {
        "name": "Sue Haakinson",
        "employeeId":7,
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/7.json",
        "company": "Kim Peacock Beringhause",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image4_small.jpeg",
        "birthdate": "953403070",
        "phone": {
            "work": "602-953-2753",
            "home": "602-953-0355",
            "mobile": "602-953-5503"
        }
    },
    {
        "name": "Valerie Pou",
        "employeeId":8,
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/8.json",
        "company": "Kpff Consulting Engineers",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image5_small.jpeg",
        "birthdate": "945047470",
        "phone": {
            "work": "610-395-8743",
            "home": "610-395-6995",
            "mobile": "610-395-5997"
        }
    },
    {
        "name": "Lashawn Hasty",
        "employeeId":9,
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/9.json",
        "company": "Sea Port Record One Stop Inc",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image16_small.jpeg",
        "birthdate": "1382642058",
        "phone": {
            "work": "626-960-6738",
            "home": "626-960-1503",
            "mobile": "626-960-1550"
        }
    },
    {
        "name": "Cristina Sharper",
        "employeeId":10,
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/10.json",
        "company": "Albers Technologies Corp",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image6_small.jpeg",
        "birthdate": "1330508024",
        "phone": {
            "work": "212-719-3952",
            "home": "212-719-0754",
            "mobile": "212-719-2344"
        }
    },
        {
        "name": "Deandre Resendiz",
        "employeeId":11,
        "company": "Sav Mart",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/11.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image7_small.jpeg",
        "birthdate": "1366092742",
        "phone": {
            "work": "208-733-8306",
            "home": "208-733-8306",
            "mobile": "208-733-3476"
        }
    },
    {
        "name": "Janet Rathrock",
        "employeeId":12,
        "company": "Ryder, Edward A Esq",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/12.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image8_small.jpeg",
        "birthdate": "-321691668",
        "phone": {
            "work": "815-877-4376",
            "home": "815-877-1191",
            "mobile": "208-733-3476"
        }
    },
    {
        "name": "Denice Nordlinger",
        "employeeId":13,
        "company": "Bickel, Daniel R CPA",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/13.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image9_small.jpeg",
        "birthdate": "-1366092742",
        "phone": {
            "work": "915-593-2344",
            "home": "915-829-1981"
        }
    },
    {
        "name": "Danny Dales",
        "employeeId":14,
        "company": "Barrett Bindery Co",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/14.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image17_small.jpeg",
        "birthdate": "940587153",
        "phone": {
            "work": "602-225-9543",
            "home": "602-225-9188",
            "mobile": ""
        }
    },
    {
        "name": "Robbie Deshay",
        "employeeId":15,
        "company": "Cornhusker Press",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/15.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image18_small.jpeg",
        "birthdate": "288123153",
        "phone": {
            "work": "916-372-5032",
            "home": "916-391-1817",
            "mobile": "916-918-9181"
        }
    },
    {
        "name": "Carla Humble",
        "employeeId":16,
        "company": "Cornhusker Press",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/16.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image10_small.jpeg",
        "birthdate": "1276493073",
        "phone": {
            "work": "916-372-5031",
            "home": "916-391-1816",
            "mobile": "771-881-8381"
        }
    },
    {
        "name": "Ashley Leonesio",
        "employeeId":17,
        "company": "Martinique Resort Hotel",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/17.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image11_small.jpeg",
        "birthdate": "1363673532",
        "phone": {
            "work": "212-227-3681",
            "home": "212-227-1817",
            "mobile": ""
        }
    },
    {
        "name": "Josephine Sotlar",
        "employeeId":18,
        "company": "Martinique Resort Hotel",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/18.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image12_small.jpeg",
        "birthdate": "1356513164",
        "phone": {
            "work": "202-783-2772",
            "home": "202-783-8805",
            "mobile": "202-783-8287"
        }
    },
    {
        "name": "Josephine Kreutzbender",
        "employeeId":19,
        "company": "Recycle Metals Corp",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/19.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image19_small.jpeg",
        "birthdate": "1278524035",
        "phone": {
            "work": "414-271-5253",
            "home": "414-271-5253",
            "mobile": "202-783-8287"
        }
    },
    {
        "name": "Kira Staffon",
        "employeeId":20,
        "company": "International Management Assoc",
        "detailsURL":"https://solstice.applauncher.com/external/Contacts/id/20.json",
        "smallImageURL": "https://solstice.applauncher.com/external/Contacts/images/image20_small.jpeg",
        "birthdate": "1178431323",
        "phone": {
            "work": "808-949-0941",
            "home": "808-949-8253",
            "mobile": "202-783-8287"
        }
    }   
]

//pagecreate event for first page
//triggers only once
//write all your on-load functions and event handlers pertaining to page1
$(document).on("pagecreate", "#info-page", function () {


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
    
    info_view += '<div class="ui-grid-a"><div class="ui-block-a"><div class="ui-bar field" style="font-weight : bold; text-align: left;"><img src="' + info.smallImageURL + '" class="ui-li-thumb"></div><div><h3>Phones</h3></div><div><h4>Work</h4>: ' + info.phone.work +'</div><div><h4>Home</h4><div><div> ' + info.phone.home +'<div><div><h4>Mobile</h4><div><div> ' + info.phone.mobile +'</div><div><h3>Address</h3></div><div> ' + info.phone.work +'</div></div><div class="ui-block-b"><div><h3>Name</h3></div><div> ' + info.name +'</div><div><h3>Company</h3></div><div> ' + info.company +' </div></div></div>';
    //add this to html
    $(this).find("[data-role=content]").html(info_view);
});

</script>

</body>
</html>