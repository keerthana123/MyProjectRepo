<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$outputParameters" element="ns0:OutputParameters" location="../../JCABinding/XRXJCA/xsd/getRightOpt_sp.xsd" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/XeroxWS_LPS/Resources/Transformations/XRX/RightOptResToWebServiceResMap/";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getRightOpt";

declare function xf:RightOptResToWebServiceResMap($outputParameters as element(ns0:OutputParameters))
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

xf:RightOptResToWebServiceResMap($outputParameters)</con:xquery>
    <con:dependency location="../../JCABinding/XRXJCA/xsd/getRightOpt_sp.xsd">
        <con:schema ref="XBS_RightOptService_LPS_POC/Resources/JCABinding/XRXJCA/xsd/getRightOpt_sp"/>
    </con:dependency>
</con:xqueryEntry>