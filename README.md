# AzureLogicAppDemo

* Using jsonschema.net, Generate sample json schema
  {
  "Name": "First Last",
  "Email": "firstlast@example.org",
  "Subject": "My Subject",
  "Message": "My Message."
}

* Generate schema
* Create blank logic app
* Add step, HTTP Request
** Paste in sample generated schema

*Add step to receive an email (Office 365 Outlook - Send approval email)
** Sign in with an account to create a connection. Fill out email parameters.
** Subject: New Message Received
** User Options
*** Bug, Comment
To: marcus@cco.com
Subject: New Message Received
Body: "New Message Received:" ((Select 'insert parameters from previous step --> Select 'Message'))

*Add step, Condition
** Choose Value: "Selected Option" is equal to "Bug"
* If yes, do something, add an action
* Visual studio, create a new work item, go through the form to file a bug.
** Title: New reported Issue: ((Select Subject object))
** Message: ((select Message Object from pipeline))

*** https://channel9.msdn.com/Shows/Azure-Friday/Azure-Logic-Apps-General-Availabilty 
