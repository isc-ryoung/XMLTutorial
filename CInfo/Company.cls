Class CInfo.Company Extends (%Persistent, %Library.Populate, %XML.Adaptor)
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
<ExtentSize>2</ExtentSize>
<IdLocation>^CInfo.CompanyD</IdLocation>
<IndexLocation>^CInfo.CompanyI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Mission">
<AverageFieldSize>105.5</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>16</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="PrimaryAddress">
<AverageFieldSize>18.5,City:8.5,State:2,Zip:5</AverageFieldSize>
<Selectivity>50.0000%,City:50.0000%,State:50.0000%,Zip:50.0000%</Selectivity>
</Property>
<Property name="Recommendation">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^CInfo.CompanyS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
