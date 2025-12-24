function Get-RedfishEndpoint {
    [CmdletBinding()]
    param()

    if (-not $script:RedfishBaseUri) { throw 'Not connected. Call Connect-Redfish first.' }

    $uri = "$($script:RedfishBaseUri)/redfish/v1/"
    $params = @{ Uri = $uri; Method = 'Get'; ErrorAction = 'Stop' }
    $response = Invoke-RestMethod @params
    return $response
}