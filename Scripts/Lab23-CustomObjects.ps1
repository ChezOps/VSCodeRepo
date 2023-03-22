#### Creating your own Custom Objects ####

# Create the object
$Employee1 = New-Object -TypeName PSCustomObject
$Employee1.GetType()

# Add properties to the object
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name 'EmployeeID' -Value '1001'
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name 'FirstName' -Value 'Penny'
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name 'Title' -Value 'CEO'
$Employee1

# Display properties and methods of the object 
Get-Member -InputObject $Employee1

#### Alternate way to create Custom Object ####
$Employee2 = [PSCustomObject]@{
    EmployeeID = '1002'
    FirstName = 'John'
    Title = 'CFO'
}

$Employee2.GetType()