Add-WindowsFeature -Name web-server, Web-Asp-Net45, Web-Mgmt-Console

rm -Path c:\inetpub\wwwroot\* -Recurse

wget -uri https://raw.githubusercontent.com/jrudley/cpuTest/master/Default.aspx -OutFile C:\inetpub\wwwroot\Default.aspx
wget -uri https://raw.githubusercontent.com/jrudley/cpuTest/master/Default.aspx.cs -OutFile c:\inetpub\wwwroot\Default.aspx.cs
wget -uri https://raw.githubusercontent.com/jrudley/cpuTest/master/Web.config -OutFile c:\inetpub\wwwroot\Web.config


