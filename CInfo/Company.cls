Class CInfo.Company Extends (%Persistent,%Library.Populate,%XML.Adaptor)
{
Property Name As %String(POPSPEC = "Company()");
Property Mission As %String(MAXLEN = 200, POPSPEC = "Mission()");
Property Recommendation As %String(VALUELIST = ",Buy,Sell,Hold");
Property PrimaryAddress As CInfo.Address;

Storage Default
{
<Data name="CompanyDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Mission</Value>
</Value>
<Value name="4">
<Value>Recommendation</Value>
</Value>
<Value name="5">
<Value>PrimaryAddress</Value>
</Value>
</Data>
<DataLocation>^CInfo.CompanyD</DataLocation>
<DefaultData>CompanyDefaultData</DefaultData>
<IdLocation>^CInfo.CompanyD</IdLocation>
<IndexLocation>^CInfo.CompanyI</IndexLocation>
<StreamLocation>^CInfo.CompanyS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}