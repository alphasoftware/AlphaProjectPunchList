#ProjectPunchList App

An example mobile app built with Alpha Anywhere. 

All construction projects use punch lists to close out projects. A punch list is a list of items that need to be completed or resolved before the project can be considered complete and the final bill submitted for payment.

The Alpha Project Punch List App uses a modern approach to providing a collaborative Project Punch List. While not a finished final product, the app provides a solid framework for future expansion and continued customization. Suggested best programming practices have been used to demonstrate many of the key Alpha Anywhere app features.

The Alpha Project Punch List App utilizes a MySQL database on the back-end and features:

* Off-line functionality which includes data entry, addition of photos and audio recordings
* On-line data synchronization with the MySQL back-end
* All media files are uploaded to S3 and persisted to the local device file system for online/offline accessibility
* Intelligent data sync. Server availability is checked before data synchronization is ever attempted
* SVG button icon rotation on synchronization ajax callback
* Automatic on device file system storage and synchronization of media files for off-line use
* Geo-location automatically acquired from Project Photo EXIF data
* Google Maps for location information
* Demonstrates the use of parent, child and grandchild data driven lists
* Searching and filtering of list data
* Verification of server availability before the synchronization callback fires 
* Smart client side data cache that stores punch list item categories and status based on SQL query. If server is not available on initial app launch, default data is loaded. 
* Dynamic button states
* List swipe row event handler to provide a native experience for editing or deleting records
* Control bars with injectable content to handle search
* Form views and editors for all detail view data entry, keyboard will never overlay content
* Template driven conditional CSS list layout templates based on global variable threshold value defined in the UX onInitializeComplete event displays item counts in green or red if the threshold value is exceeded

##Prerequisite Experience

This component uses some advanced techniques and it is assumed that you are an intermediate to advanced Alpha Anywhere developer. You should be very familiar with building PhoneGap apps with Alpha Anywhere before diving in to this component. 

##Installation and Setup

This app requires a running instance of MySQL. The included projectdb.sql file is used to create the database and populate the tables with some sample data. The projectdb.sql file was created with Navicat.

Copy the ProjectPunchList.a5wcmp file to an existing or new project folder in Alpha Anywhere.

###Database Connection String

####NOTE: The default database connection string name used in this component is: projectsDB.

You will need to define a connection string to the MySQL database. There are 3 lists used by this component and all 3 lists will need to use this connection string. The default name for the connection string is projectsDB so if you name the connection string projectsDB you will not have to make any changes to the component to connect to the database. If you use a different name, you will need to modify the connection string property for each of the lists. The 3 lists are:

* LIST_PROJECTS
* LIST_PUNCHLIST_ITEMS
* LIST_PUNCHLIST_DETAILS

###Storage Connection String

####NOTE: The default storage connection string name used in this component is: aademo.

All media files (photos and audio recordings) are uploaded to an S3 bucket so you will need to setup a storage connection string that points to your S3 bucket. The default name for the storage connection string is aademo so if you name the storage connection string aademo you will not have to make any changes to the component to connect to your properly configured S3 bucket. If you use a different name, you will need to modify the storage connection string property for the parent list, LIST_PROJECTS. This is done by selecting the LIST_PROJECTS | List Properties | Detail View Tab | Media and Other Linked Files | Amazon S3 | Connection String. 

You will also need to setup the correct CORS policy for the S3 bucket. See the Alpha Anywhere release notes below for information on S3 file uploads and CORS (from within your browser, search (CTRL F) for "File Upload - Amazon S3" and "CORS").

[Alpha Anywhere V12 Release Notes](https://www.alphasoftware.com/documentation/pages/ReleaseNotes/ReleaseNotes.Html)

##PhoneGap Plugins Required

To run this app you will need to build a PhoneGap app with the Alpha Anywhere PhoneGap App Builder. Android and iOS devices are supported. 

The required plugins have been defined in the components PhoneGap Default Settings properties. as such, when you create a new PhoneGap project based on this component, the required plugins will be automatically installed by the Alpha Anywhere PhoneGap App Builder.

The required PhoneGap plugin list includes:

* Device
* File
* File Transfer
* Network Information
* Notification
* Splash Screen
* Camera with Exif
* Ionic Keyboard
* Media With Compression
* Status Bar
* Toast
* Whitelist





  


 
