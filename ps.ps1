<#$

{
    "Name": "First Last",
    "Email": "firstlast@example.org",
    "Subject": "My Subject",
    "Message": "My Message."
}
#>

$uri = "https://prod-10.westus.logic.azure.com:443/workflows/69dae2c72dc9473a91b1a9fa41e02367/triggers/manual/run?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=rOkHG-V-TNTiPkUtdXkIWJjm5W4_BCL7n34BVPQT2cg"
$body = ConvertTo-Json @{
        Name = 'Marcus Clayton'
        Email = "marcus@cco.com"
        Subject = "Issue 2 from PS"
        Message = "This is the second filed issue from a PS JSON post."
}

Invoke-RestMethod -uri $uri -Method Post -body $body -ContentType 'application/json' -Verbose
