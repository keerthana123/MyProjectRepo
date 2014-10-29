<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$inputs1" element="ns0:Inputs" location="../XSD/XBSRightOptInputs.xsd" ::)
(:: pragma bea:global-element-return element="ns1:InputParameters" location="../JCABinding/XRXService/xsd/getResults_sp.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getResults";
declare namespace ns0 = "http://ivr.acshrsolutions.com/DAWS";
declare namespace xf = "http://tempuri.org/XBS_RightOptService_POC/Resources/Transformations/InputsToSPJCAMAP/";

declare function xf:InputsToSPJCAMAP($inputs1 as element(ns0:Inputs))
    as element(ns1:InputParameters) {
        &lt;ns1:InputParameters>
            {
                for $Arg in $inputs1/ns0:Arg
                return
                    &lt;ns1:Arg>{ data($Arg) }&lt;/ns1:Arg>
            }
        &lt;/ns1:InputParameters>
};

declare variable $inputs1 as element(ns0:Inputs) external;

xf:InputsToSPJCAMAP($inputs1)</con:xquery>
    <con:dependency location="../XSD/XBSRightOptInputs.xsd">
        <con:schema ref="XBS_RightOptService_JAVA/Resources/XSD/XBSRightOptInputs"/>
    </con:dependency>
    <con:dependency location="../JCABinding/XRXService/xsd/getResults_sp.xsd">
        <con:schema ref="XBS_RightOptService_JAVA/Resources/JCABinding/XRXService/xsd/getResults_sp"/>
    </con:dependency>
</con:xqueryEntry>