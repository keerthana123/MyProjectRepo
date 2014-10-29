<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$jdbcNM" type="xs:anyType" ::)
(:: pragma  parameter="$RespXML" type="xs:anyType" ::)
(:: pragma bea:global-element-return element="ns0:Results" location="../Schemas/Results.xsd" ::)

declare namespace xf = "http://tempuri.org/RightOpt_GenericBS_MultipleOperations/Resources/Transformations/Response1/";
declare namespace ns0 = "http://ivr.acshrsolutions.com/DAWS";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RightOpt_ACS";
declare function xf:Response1($RespXML as element(*))
    as element(ns0:Results) {
        <ns0:Results>        
  			<ns0:ResultSet>
    <ns0:ResultSetMetaData ColumnCount="1">
      <ns0:ColumnMetaData ColumnDisplaySize="25" ColumnLabel="ErrorMessage"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
    </ns0:ResultSetMetaData>
    <ns0:ResultSetData>
      <ns0:Row>
      <ns0:Column name="ErrorMessage">{$RespXML/ns1:OutputParameters/ns1:ERRORMESSAGE/text()}</ns0:Column>
      </ns0:Row>
    </ns0:ResultSetData>
  </ns0:ResultSet>
  <ns0:Outputs>
    <ns0:OutputData ParameterCount="1">
      <ns0:Parameter name="ErrorMessage" type="string"/>
    </ns0:OutputData>
  </ns0:Outputs>
  <ns0:Errors code=""/>
</ns0:Results>  
        
};

declare variable $RespXML as element(*) external;

xf:Response1($RespXML)]]></con:xquery>
    <con:dependency location="../Schemas/Results.xsd">
        <con:schema ref="RightOpt_GenericBS_MultipleOperations/Resources/Schemas/Results"/>
    </con:dependency>
</con:xqueryEntry>