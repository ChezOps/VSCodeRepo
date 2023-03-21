Set-StrictMode -off

$myArray=@("Test1","Test2","Test3")
$myArray+="Test5"

####################
## Array Lists ##

# Create the Array List
$myList = New-Object -TypeName System.Collections.ArrayList

# Use the properties and methods for object info
$myList.GetType()
$myList.IsFixedSize

# Add data to the array
$myList.Add("Test1")
$myList.AddRange(@("Test2","Test3"))
$myList.Remove("test2")

# Testing efficiency
$array=@()
$arrayList = New-Object -TypeName System.Collections.ArrayList

Measure-Command -Expression {@(0..20000).ForEach({$array+=$_})}
Measure-Command -Expression {@(0..20000).ForEach({$arrayList.Add($_)})}

##updates

(Get-Date).GetType()