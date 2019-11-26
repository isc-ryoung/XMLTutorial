/// CInfo.WebService
Class CInfo.WebService Extends %SOAP.WebService [ Language = objectscript, ProcedureBlock ]
{

/// Name of the WebService.
Parameter SERVICENAME = "CompanyInfo";

/// TODO: change this to actual SOAP namespace.
/// SOAP Namespace for the WebService
Parameter NAMESPACE = "http://tempuri.org";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

/// TODO: add arguments and implementation.
/// GetCompanyInfo
Method GetCompanyInfo(id As %Integer) As CInfo.Company [ WebMethod ]
{
    Return ##class(CInfo.Company).%OpenId(id)
}


/// TODO: add arguments and implementation.
/// CreateCompanies
Method CreateCompanies(count As %Integer) As %Integer [ WebMethod ]
{
    Return ##class(CInfo.Company).Populate(count)
}


}
