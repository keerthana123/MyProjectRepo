<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$outputParameters" element="ns1:OutputParameters" location="../JCA/xsd/getUserInfo_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:sampleDataServiceResponse" location="../XSD/SampleDataService.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getUserInfo";
declare namespace ns0 = "http://www.xerox.com/SampleDataService";
declare namespace xf = "http://tempuri.org/TestSPPOC/Resource/Transformations/ServiceResponseToSampleDataServiceResponseMap/";

declare function xf:ServiceResponseToSampleDataServiceResponseMap($outputParameters as element(ns1:OutputParameters))
    as element(*) {
        <sampleDataServiceResponse>
            {
                for $O_USERNAME in $outputParameters/ns1:O_USERNAME
                return
                    <userName>{ data($O_USERNAME) }</userName>
            }
            {
                for $O_CREATEDBY in $outputParameters/ns1:O_CREATEDBY
                return
                    <createdBy>{ data($O_CREATEDBY) }</createdBy>
            }
            {
                for $O_DATE in $outputParameters/ns1:O_DATE
                return
                    <date>{ data($O_DATE) }</date>
            }
        </sampleDataServiceResponse>
};

declare variable $outputParameters as element(ns1:OutputParameters) external;

xf:ServiceResponseToSampleDataServiceResponseMap($outputParameters)]]></con:xquery>
    <con:dependency location="../JCA/xsd/getUserInfo_sp.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/JCA/xsd/getUserInfo_sp"/>
    </con:dependency>
    <con:dependency location="../XSD/SampleDataService.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/XSD/SampleDataService"/>
    </con:dependency>
</con:xqueryEntry>