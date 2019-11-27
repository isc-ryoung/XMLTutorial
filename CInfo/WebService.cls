/// CInfo.WebService
Class CInfo.WebService Extends %SOAP.WebService [ ProcedureBlock ]
{

/// Name of the WebService.
Parameter SERVICENAME = "CompanyInfo";

/// TODO: change this to actual SOAP namespace.
/// SOAP Namespace for the WebService
Parameter NAMESPACE = "http://tempuri.org";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method GetCompanyInfo(id As %Integer) As CInfo.Company [ WebMethod ]
{
    Quit ##class(CInfo.Company).%OpenId(id)
}

Method CreateCompanies(count As %Integer) As %Integer [ WebMethod ]
{
    Quit ##class(CInfo.Company).Populate(count)
}

/// TODO: add arguments and implementation.
/// GetCompanyInfo
/// TODO: add arguments and implementation.
/// CreateCompanies

}
