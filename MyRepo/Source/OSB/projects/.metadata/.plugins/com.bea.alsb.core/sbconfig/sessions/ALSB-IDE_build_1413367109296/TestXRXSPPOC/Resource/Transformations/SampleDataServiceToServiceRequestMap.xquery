<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$SampleDataServiceRequest" element="ns0:sampleDataServiceRequest" location="../XSD/SampleDataService.xsd" ::)
(:: pragma bea:global-element-return element="ns1:InputParameters" location="../JCA/xsd/getUserInfo_sp.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getUserInfo";
declare namespace ns0 = "http://www.xerox.com/SampleDataService";
declare namespace xf = "http://tempuri.org/TestSPPOC/Resource/Transformations/SampleDataServiceToServiceRequestMap/";

declare function xf:SampleDataServiceToServiceRequestMap($SampleDataServiceRequest as element(*))
    as element(ns1:InputParameters) {
        &lt;ns1:InputParameters>
            &lt;ns1:P_USERID>{ data($SampleDataServiceRequest/userID/text()) }&lt;/ns1:P_USERID>
        &lt;/ns1:InputParameters>
};

declare variable $SampleDataServiceRequest as element(*) external;

xf:SampleDataServiceToServiceRequestMap($SampleDataServiceRequest)</con:xquery>
    <con:dependency location="../XSD/SampleDataService.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/XSD/SampleDataService"/>
    </con:dependency>
    <con:dependency location="../JCA/xsd/getUserInfo_sp.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/JCA/xsd/getUserInfo_sp"/>
    </con:dependency>
</con:xqueryEntry>