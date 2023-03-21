## Create a hashtable
$myHashTable=@{
    key1=100
    key2=200
    name="John Doe"
    key3=$true

}

$myHashTable.GetType()
$myHashTable.Keys
$myHashTable.Values
$myHashTable.name
$myHashTable['key3']
$myHashTable.ContainsKey('key4')
$myHashTable.ContainsValue($true)

# Add value to a hashtable on the fly
$myHashTable.Add('key10','testing add function')
$myHashTable['key11']= "Added using square brackets"
$myHashTable.key12="Added via dot notation"