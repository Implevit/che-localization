#####################################################################################################
#
# New Docker Container - External Database
#
#####################################################################################################

########################################################################################################
# Variables User
########################################################################################################

#Docker Container Name
$containerName = 'EIN-BC191-DEV1'

#Business Central Version
$artifactUrl = Get-BcArtifactUrl -type 'OnPrem' -version '19.1.31886.32186' -country 'ch' -select 'Closest'
$licenseFile = '\\impfps01\Daten\04_Entwicklung\Software\Navision/BC190.flf'

#SQL Database
$databaseServer = '192.168.192.27'
$databaseInstance = 'SQL2019'
$databaseName = 'EIN-BC191-DEV1'

########################################################################################################
# Variables Fixed
########################################################################################################
$credential = Get-Credential -Message 'Please enter credentials for the Busines Central - User'
$databaseCredential = Get-Credential -Message 'Please enter credentials for the SQL Server Authentification'
$auth = 'UserPassword'

########################################################################################################
# Create Docker Container
########################################################################################################
Check-BcContainerHelperPermissions -Fix

$bccontainerhelperconfig.useSharedEncryptionKeys = $false

New-BcContainer `
    -accept_eula `
    -containerName $containerName `
    -credential $credential `
    -auth $auth `
    -artifactUrl $artifactUrl `
    -isolation hyperv `
    -databaseServer $databaseServer -databaseInstance $databaseInstance -databaseName $databaseName `
    -databaseCredential $databaseCredential `
    -licenseFile $licenseFile `
    -dns '192.168.192.26' `
    -memoryLimit 8G `
    -alwaysPull `
    -updateHosts

    #Open Webbrowser
    Start-Process "http://$($ContainerName)/BC" 