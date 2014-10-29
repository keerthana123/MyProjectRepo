<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$outputParameters" element="ns0:OutputParameters" location="../JCAXRX/xsd/getUserDetails_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns1:sampleDataServiceResponse" location="../XSD/SampleDataService.xsd" ::)

declare namespace ns1 = "http://www.xerox.com/SampleDataService";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getUserDetails";
declare namespace xf = "http://tempuri.org/TestSPPOC/Resource/Transformations/XrxServiceResToSampleDataServiceResMap/";

declare function xf:XrxServiceResToSampleDataServiceResMap($outputParameters as element(ns0:OutputParameters))
    as element(*) {
        <sampleDataServiceResponse>
            {
                for $O_USERNAME in $outputParameters/ns0:O_USERNAME
                return
                    <userName>{ data($O_USERNAME) }</userName>
            }
            {
                for $O_CREATEDBY in $outputParameters/ns0:O_CREATEDBY
                return
                    <createdBy>{ data($O_CREATEDBY) }</createdBy>
            }
            {
                for $O_DATE in $outputParameters/ns0:O_DATE
                return
                    <ns1:date>{ data($O_DATE) }</ns1:date>
            }
        </sampleDataServiceResponse>
};

declare variable $outputParameters as element(ns0:OutputParameters) external;

xf:XrxServiceResToSampleDataServiceResMap($outputParameters)]]></con:xquery>
    <con:dependency location="../JCAXRX/xsd/getUserDetails_sp.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/JCAXRX/xsd/getUserDetails_sp"/>
    </con:dependency>
    <con:dependency location="../XSD/SampleDataService.xsd">
        <con:schema ref="TestXRXSPPOC/Resource/XSD/SampleDataService"/>
    </con:dependency>
</con:xqueryEntry>