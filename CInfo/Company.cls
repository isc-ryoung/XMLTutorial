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
<ExtentSize>1012</ExtentSize>
<IdLocation>^CInfo.CompanyD</IdLocation>
<IndexLocation>^CInfo.CompanyI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<OutlierSelectivity>.992632:</OutlierSelectivity>
<Selectivity>0.0988%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>2.91</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Mission">
<AverageFieldSize>93.45</AverageFieldSize>
<Selectivity>0.0988%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>16.47</AverageFieldSize>
<Selectivity>0.0988%</Selectivity>
</Property>
<Property name="PrimaryAddress">
<AverageFieldSize>17.53,City:7.07,State:2,Zip:5</AverageFieldSize>
<Selectivity>0.0988%,City:3.9095%,State:1.9765%,Zip:0.0988%</Selectivity>
</Property>
<Property name="Recommendation">
<AverageFieldSize>3.71</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-84</BlockCount>
</SQLMap>
<StreamLocation>^CInfo.CompanyS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
