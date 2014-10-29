<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$ReqXML" element="ns0:Inputs" location="../Schemas/Inputs.xsd" ::)
(:: pragma bea:global-element-return element="ns1:InputParameters" location="../Schemas/RightOpt_ACS_sp.xsd" ::)

declare namespace xf = "http://tempuri.org/RightOpt_GenericBS_MultipleOperations/Resources/Transformations/rightopt_acs/";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RightOpt_ACS";
declare namespace ns0 = "http://ivr.acshrsolutions.com/DAWS";

declare function xf:rightopt_acs($ReqXML as element(ns0:Inputs))
    as element(ns1:InputParameters) {
        <ns1:InputParameters>
            <ns1:COMP_NR>{$ReqXML/ns0:Arg[@name='comp_nr']/text()}</ns1:COMP_NR>
            <ns1:PLAN_NR>{$ReqXML/ns0:Arg[@name='plan_nr']/text()}</ns1:PLAN_NR>
            <ns1:SSN_NR>{$ReqXML/ns0:Arg[@name='ssn_nr']/text()}</ns1:SSN_NR>
       </ns1:InputParameters>
};

declare variable $ReqXML as element(ns0:Inputs) external;

xf:rightopt_acs($ReqXML)]]></con:xquery>
    <con:dependency location="../Schemas/Inputs.xsd">
        <con:schema ref="RightOpt_BS_MultipleOperations/Resources/Schemas/Inputs"/>
    </con:dependency>
    <con:dependency location="../Schemas/RightOpt_ACS_sp.xsd">
        <con:schema ref="RightOpt_BS_MultipleOperations/Resources/Schemas/RightOpt_ACS_sp"/>
    </con:dependency>
</con:xqueryEntry>