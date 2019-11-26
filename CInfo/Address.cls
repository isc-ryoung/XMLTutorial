Class CInfo.Address Extends (%SerialObject, %XML.Adaptor, %Populate)
{

Property City As %String(POPSPEC = "City()");
Property State As %String(POPSPEC = "USState()");
Property Zip As %String(POPSPEC = "USZip()");


Storage Default
{
<Data name="AddressState">
<Value name="1">
<Value>City</Value>
</Value>
<Value name="2">
<Value>State</Value>
</Value>
<Value name="3">
<Value>Zip</Value>
</Value>
</Data>
<State>AddressState</State>
<StreamLocation>^CInfo.AddressS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}