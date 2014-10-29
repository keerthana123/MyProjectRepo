<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$outputParameters" element="ns0:OutputParameters" location="../../JCABinding/ACSJCA/xsd/getSavingsInSight_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getSavingsInSight";
declare namespace xf = "http://tempuri.org/XeroxWS_LPS/Resources/Transformations/ACS/SavingsInSightResToWebServiceResMap/";

declare function xf:SavingsInSightResToWebServiceResMap($outputParameters as element(ns0:OutputParameters))
    as element(*) {
    &lt;getResultsResponse> 
     {
                for $ERRORMESSAGE in $outputParameters/ns0:ERRORMESSAGE
                return
                             
          		&lt;String_1>{ fn-bea:serialize($outputParameters/ns0:ERRORMESSAGE) }&lt;/String_1>
           
           
            }   
     
        &lt;/getResultsResponse>
};

declare variable $outputParameters as element(ns0:OutputParameters) external;

xf:SavingsInSightResToWebServiceResMap($outputParameters)</con:xquery>
    <con:dependency location="../../JCABinding/ACSJCA/xsd/getSavingsInSight_sp.xsd">
        <con:schema ref="XBS_RightOptService_LPS_POC/Resources/JCABinding/ACSJCA/xsd/getSavingsInSight_sp"/>
    </con:dependency>
</con:xqueryEntry>