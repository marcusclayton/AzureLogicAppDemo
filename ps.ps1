$

{
    "Name": "First Last",
    "Email": "firstlast@example.org",
    "Subject": "My Subject",
    "Message": "My Message."
}


#$uri = "<LOGIC_APP_URI_HERE>"
$body = ConvertTo-Json @{
        Name = 'Marcus Clayton'
        Email = "marcus@cco.com"
        Subject = "Issue 2 from PS"
        Message = "This is the second filed issue from a PS JSON post."
}

Invoke-RestMethod -uri $uri -Method Post -body $body -ContentType 'application/json' -Verbose
