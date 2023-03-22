# Environment Variables
$($env:PSModulePath).Split(';')

Get-Module -ListAvailable

Import-Module -Name ScheduledTasks
Get-Command -Module ScheduledTasks
Get-ScheduledTasks

Find-Module -Name 'VMware*'