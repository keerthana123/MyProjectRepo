<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma  parameter="$Request" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../../JCABinding/XRXJCA/xsd/getRightOpt_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getRightOpt";
declare namespace xf = "http://tempuri.org/XeroxWS_LPS/Resources/Transformations/XRX/WebServiceReqToRightOptReqMap/";

declare function xf:WebServiceReqToRightOptReqMap($Request as element(*))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:COMP_NR>{data($Request/*:Arg[@name='comp_nr']/text())}</ns0:COMP_NR>
            <ns0:PLAN_NR>{data($Request/*:Arg[@name='plan_nr']/text())}</ns0:PLAN_NR>
            <ns0:ID>{data($Request/*:Arg[@name='ID']/text())}</ns0:ID>
        </ns0:InputParameters>
};

declare variable $Request as element(*) external;

xf:WebServiceReqToRightOptReqMap($Request)]]></con:xquery>
    <con:dependency location="../../JCABinding/XRXJCA/xsd/getRightOpt_sp.xsd">
        <con:schema ref="XBS_RightOptService_LPS_POC/Resources/JCABinding/XRXJCA/xsd/getRightOpt_sp"/>
    </con:dependency>
</con:xqueryEntry>