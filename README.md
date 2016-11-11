# AzureLogicAppDemo
** https://channel9.msdn.com/Shows/Azure-Friday/Azure-Logic-Apps-General-Availabilty 

* Using jsonschema.net, Generate sample json schema
 ```Python
  {
  "Name": "First Last",
  "Email": "firstlast@example.org",
  "Subject": "My Subject",
  "Message": "My Message."
}
```

* Generate schema
* Create blank logic app
* Add step, HTTP Request
** Paste in sample generated schema

* Add step to receive an email (Office 365 Outlook - Send approval email)
** Sign in with an account to create a connection. Fill out email parameters.
** Subject: New Message Received
** User Options
*** Bug, Comment
* To: marcus@cco.com
* Subject: New Message Received
* Body: "New Message Received:" ((Select 'insert parameters from previous step --> Select 'Message'))

* Add step, Condition
** Choose Value: "Selected Option" is equal to "Bug"
* If yes, do something, add an action
* Visual studio, create a new work item, go through the form to file a bug.
** Title: New reported Issue: ((Select Subject object))
** Message: ((select Message Object from pipeline))

* Save the logic app, and copy the request URL from the first step. 
* This will be used as a parameter in the PS script below.

# _________________________________________________________
## Email with approval buttons should be sent.
# _________________________________________________________
![picture alt](https://mcautomationgitresources.blob.core.windows.net/images/logicAppEmailScreenshot.png "Approval Email")




# _________________________________________________________
## After selecting "Bug", a browser should launch indicating the request was received.
# _________________________________________________________ 
![picture alt](https://mcautomationgitresources.blob.core.windows.net/images/logicAppBugSubmission.png "Approval Response")



# _________________________________________________________
```PowerShell
$uri = "<LOGIC_APP_URI_HERE>"
$body = ConvertTo-Json @{
        Name = 'Marcus Clayton'
        Email = "marcus@cco.com"
        Subject = "Issue 1 from PS"
        Message = "This is the first filed issue from a PS JSON post."
}

Invoke-RestMethod -uri $uri -Method Post -body $body -ContentType 'application/json' -Verbose
```


** Future Integration/Next Steps: http://www.quicklearn.com/blog/2016/06/09/deploying-logic-apps-using-visual-studio-team-services/ 