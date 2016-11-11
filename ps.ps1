<#$

{
    "Name": "First Last",
    "Email": "firstlast@example.org",
    "Subject": "My Subject",
    "Message": "My Message."
}
#>

$uri = "<URI_HERE>"
$body = ConvertTo-Json @{
        Name = 'Marcus Clayton'
        Email = "marcus@cco.com"
        Subject = "Git Issue 1"
        Message = "First Git issue from PS."
}

Invoke-RestMethod -uri $uri -Method Post -body $body -ContentType 'application/json' -Verbose
