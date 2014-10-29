<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$ReqXML" element="ns0:Inputs" location="../Schemas/Inputs.xsd" ::)
(:: pragma  parameter="$get_properties" type="xs:anyType" ::)
(:: pragma bea:global-element-return element="ns1:InputParameters" location="../Schemas/RightOpt_XRX_sp.xsd" ::)

declare namespace xf = "http://tempuri.org/RightOpt_GenericBS_MultipleOperations/Resources/Transformations/ReqXML_to_XRX/";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RightOpt_XRX";
declare namespace ns0 = "http://ivr.acshrsolutions.com/DAWS";

declare function xf:ReqXML_to_XRX($ReqXML as element(ns0:Inputs),
    $get_properties as element(*))
    as element(ns1:InputParameters) {
        <ns1:InputParameters>
            <ns1:COMP_NR>{$ReqXML/ns0:Arg[@name=$get_properties/row/COMP_NR/text()]/text()}</ns1:COMP_NR>
            <ns1:PLAN_NR>{$ReqXML/ns0:Arg[@name=$get_properties/row/PLAN_NR/text()]/text()}</ns1:PLAN_NR>
            <ns1:ID>{$ReqXML/ns0:Arg[@name=$get_properties/row/ID/text()]/text()}</ns1:ID>
        </ns1:InputParameters>
};

declare variable $ReqXML as element(ns0:Inputs) external;
declare variable $get_properties as element(*) external;

xf:ReqXML_to_XRX($ReqXML,
    $get_properties)]]></con:xquery>
    <con:dependency location="../Schemas/Inputs.xsd">
        <con:schema ref="RightOpt_GenericBS_MultipleOperations/Resources/Schemas/Inputs"/>
    </con:dependency>
    <con:dependency location="../Schemas/RightOpt_XRX_sp.xsd">
        <con:schema ref="RightOpt_GenericBS_MultipleOperations/Resources/Schemas/RightOpt_XRX_sp"/>
    </con:dependency>
</con:xqueryEntry>