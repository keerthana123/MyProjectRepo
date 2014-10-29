<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$sampleDataServiceRequest" element="ns1:sampleDataServiceRequest" location="../XSD/SampleDataService.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../JCAXRX/xsd/getUserDetails_sp.xsd" ::)

declare namespace ns1 = "http://www.xerox.com/SampleDataService";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getUserDetails";
declare namespace xf = "http://tempuri.org/TestSPPOC/Resource/Transformations/SampleDataServiceReqToXrxServiceReqMap/";

declare function xf:SampleDataServiceReqToXrxServiceReqMap($sampleDataServiceRequest as element(*))
    as element(ns0:InputParameters) {
        &lt;ns0:InputParameters>
            &lt;ns0:P_USERID>{ data($sampleDataServiceRequest/userID/text()) }&lt;/ns0:P_USERID>
        &lt;/ns0:InputParameters>
};

declare variable $sampleDataServiceRequest as element(*) external;

xf:SampleDataServiceReqToXrxServiceReqMap($sampleDataServiceRequest)</con:xquery>
    <con:dependency location="../XSD/SampleDataService.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/XSD/SampleDataService"/>
    </con:dependency>
    <con:dependency location="../JCAXRX/xsd/getUserDetails_sp.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/JCAXRX/xsd/getUserDetails_sp"/>
    </con:dependency>
</con:xqueryEntry>