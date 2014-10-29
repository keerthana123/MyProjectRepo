<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-return element="ns0:InputParameters" location="../../JCABinding/ACSJCA/xsd/getSavingsInSight_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getSavingsInSight";
declare namespace xf = "http://tempuri.org/XeroxWS_LPS/Resources/Transformations/ACS/WebServiceReqToSavingsInSightReqMap/";

declare function xf:WebServiceReqToSavingsInSightReqMap($Request as element(*))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:COMP_NR>{data($Request/*:Arg[@name='comp_nr']/text())}</ns0:COMP_NR>
            <ns0:PLAN_NR>{data($Request/*:Arg[@name='plan_nr']/text())}</ns0:PLAN_NR>
            <ns0:SSN_NR>{data($Request/*:Arg[@name='ssn_nr']/text())}</ns0:SSN_NR>
        </ns0:InputParameters>
};

declare variable $Request as element(*) external;

xf:WebServiceReqToSavingsInSightReqMap($Request)]]></con:xquery>
    <con:dependency location="../../JCABinding/ACSJCA/xsd/getSavingsInSight_sp.xsd">
        <con:schema ref="XeroxWS_LPS/Resources/JCABinding/ACSJCA/xsd/getSavingsInSight_sp"/>
    </con:dependency>
</con:xqueryEntry>