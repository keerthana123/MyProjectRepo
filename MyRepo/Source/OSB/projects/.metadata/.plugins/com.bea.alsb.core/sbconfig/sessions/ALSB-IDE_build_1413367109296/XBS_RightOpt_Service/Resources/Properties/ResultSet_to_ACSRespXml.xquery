<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-return element="ns0:Results" location="../Schemas/Results.xsd" ::)

declare namespace xf = "http://tempuri.org/XBS_RightOpt_Service/Resources/Properties/ResultSet_to_RespXml/";
declare namespace daws = "http://ivr.acshrsolutions.com/DAWS";

declare function xf:ResultSet_to_RespXml($ErrMsg as xs:string)
    as element(daws:Results) {
    
<daws:Results xmlns:daws="http://ivr.acshrsolutions.com/DAWS"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="http://ivr.acshrsolutions.com/DAWS Results.xsd">
  <daws:ResultSet>
    <daws:ResultSetMetaData ColumnCount="75">
      <daws:ColumnMetaData ColumnDisplaySize="2" ColumnLabel="PLNN"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="9" ColumnLabel="SSNN"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="30" ColumnLabel="NAMS"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="15" ColumnLabel="EEID"
                           ColumnType="string" ColumnTypeName="varchar"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CLSV"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="LCLB"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="1" ColumnLabel="HCE_IND"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="1" ColumnLabel="ELIG_IND"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="70" ColumnLabel="email_address"
                           ColumnType="string" ColumnTypeName="varchar"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="10" ColumnLabel="BHDT"
                           ColumnType="string" ColumnTypeName="varchar"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="6" ColumnLabel="CMM1"
                           ColumnType="integer" ColumnTypeName="smallint"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="10" ColumnLabel="EMDT"
                           ColumnType="string" ColumnTypeName="varchar"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="40" ColumnLabel="STR1"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="40" ColumnLabel="STR2"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="40" ColumnLabel="STR3"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="28" ColumnLabel="CITY"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="3" ColumnLabel="STAE"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="9" ColumnLabel="PSTC"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="3" ColumnLabel="CNTR"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRBT_D"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRBT_P"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINBTAXD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINBTAX"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXBTAXD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXBTAX"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRAT_D"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRAT_P"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINATAX"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINATAXD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXATAXD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXATAX"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRRT_D"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRRT_P"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINCRRTD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINCRRT"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXCRRTD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXCRRT"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRCU_D"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRCU_P"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINCRCD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINCRCU"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXCRCU"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXCRCD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRCR_D"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="CRCR_P"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINCRCRD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MINCRCR"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXCRCRD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="MAXCRCR"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="TOTMIN"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="TOTMIND"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="TOTMAX"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="TOTMAXD"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="TOTMAX_ALLRT"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="1" ColumnLabel="PRFC"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="1" ColumnLabel="CIFC"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="10" ColumnLabel="CIDT"
                           ColumnType="string" ColumnTypeName="varchar"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="GPRT"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="PPRT"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="2" ColumnLabel="MATCH_IND"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="misc_amt_1"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="misc_amt_2"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="misc_amt_3"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="85" ColumnLabel="misc_amt_4"
                           ColumnType="double" ColumnTypeName="double precision"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="30" ColumnLabel="misc_char_1"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="30" ColumnLabel="misc_char_2"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="30" ColumnLabel="misc_char_3"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="30" ColumnLabel="misc_char_4"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="25" ColumnLabel="misc_date_1"
                           ColumnType="datetime" ColumnTypeName="datetime"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="25" ColumnLabel="misc_date_2"
                           ColumnType="datetime" ColumnTypeName="datetime"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="25" ColumnLabel="misc_date_3"
                           ColumnType="datetime" ColumnTypeName="datetime"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="25" ColumnLabel="misc_date_4"
                           ColumnType="datetime" ColumnTypeName="datetime"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="255" ColumnLabel="CR_URL"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="255" ColumnLabel="EN_URL"
                           ColumnType="string" ColumnTypeName="char"
                           Nullable="true"/>
      <daws:ColumnMetaData ColumnDisplaySize="10" ColumnLabel="UVDT"
                           ColumnType="string" ColumnTypeName="varchar"
                           Nullable="true"/>
    </daws:ResultSetMetaData>
    <daws:ResultSetData>
      <daws:Row>
        <daws:Column name="PLNN">06</daws:Column>
        <daws:Column name="SSNN">911290011</daws:Column>
        <daws:Column name="NAMS"/>
        <daws:Column name="EEID"/>
        <daws:Column name="CLSV">125346.04000000001</daws:Column>
        <daws:Column name="LCLB"/>
        <daws:Column name="HCE_IND">N</daws:Column>
        <daws:Column name="ELIG_IND">C</daws:Column>
        <daws:Column name="email_address"/>
        <daws:Column name="BHDT">1956-08-21</daws:Column>
        <daws:Column name="CMM1"/>
        <daws:Column name="EMDT">2001-09-24</daws:Column>
        <daws:Column name="STR1"/>
        <daws:Column name="STR2"/>
        <daws:Column name="STR3"/>
        <daws:Column name="CITY"/>
        <daws:Column name="STAE"/>
        <daws:Column name="PSTC"/>
        <daws:Column name="CNTR"/>
        <daws:Column name="CRBT_D"/>
        <daws:Column name="CRBT_P">25.0</daws:Column>
        <daws:Column name="MINBTAXD"/>
        <daws:Column name="MINBTAX">0.0</daws:Column>
        <daws:Column name="MAXBTAXD"/>
        <daws:Column name="MAXBTAX">75.0</daws:Column>
        <daws:Column name="CRAT_D"/>
        <daws:Column name="CRAT_P"/>
        <daws:Column name="MINATAX"/>
        <daws:Column name="MINATAXD"/>
        <daws:Column name="MAXATAXD"/>
        <daws:Column name="MAXATAX"/>
        <daws:Column name="CRRT_D"/>
        <daws:Column name="CRRT_P">6.0</daws:Column>
        <daws:Column name="MINCRRTD"/>
        <daws:Column name="MINCRRT">0.0</daws:Column>
        <daws:Column name="MAXCRRTD"/>
        <daws:Column name="MAXCRRT">75.0</daws:Column>
        <daws:Column name="CRCU_D"/>
        <daws:Column name="CRCU_P"/>
        <daws:Column name="MINCRCD"/>
        <daws:Column name="MINCRCU"/>
        <daws:Column name="MAXCRCU"/>
        <daws:Column name="MAXCRCD"/>
        <daws:Column name="CRCR_D"/>
        <daws:Column name="CRCR_P"/>
        <daws:Column name="MINCRCRD"/>
        <daws:Column name="MINCRCR"/>
        <daws:Column name="MAXCRCRD"/>
        <daws:Column name="MAXCRCR"/>
        <daws:Column name="TOTMIN">0.0</daws:Column>
        <daws:Column name="TOTMIND"/>
        <daws:Column name="TOTMAX">75.0</daws:Column>
        <daws:Column name="TOTMAXD"/>
        <daws:Column name="TOTMAX_ALLRT">100.0</daws:Column>
        <daws:Column name="PRFC">B</daws:Column>
        <daws:Column name="CIFC"/>
        <daws:Column name="CIDT"/>
        <daws:Column name="GPRT">138500.12</daws:Column>
        <daws:Column name="PPRT"/>
        <daws:Column name="MATCH_IND">1</daws:Column>
        <daws:Column name="misc_amt_1"/>
        <daws:Column name="misc_amt_2"/>
        <daws:Column name="misc_amt_3"/>
        <daws:Column name="misc_amt_4"/>
        <daws:Column name="misc_char_1"/>
        <daws:Column name="misc_char_2"/>
        <daws:Column name="misc_char_3"/>
        <daws:Column name="misc_char_4"/>
        <daws:Column name="misc_date_1"/>
        <daws:Column name="misc_date_2"/>
        <daws:Column name="misc_date_3"/>
        <daws:Column name="misc_date_4"/>
        <daws:Column name="CR_URL">/DC/contributionRates.jsp?ENRI=C</daws:Column>
        <daws:Column name="EN_URL">/DC/contributionRates.jsp?ENRI=E</daws:Column>
        <daws:Column name="UVDT">2014-07-01</daws:Column>
      </daws:Row>
    </daws:ResultSetData>
  </daws:ResultSet>
  <daws:Outputs>
    <daws:OutputData ParameterCount="1">
      <daws:Parameter name="ErrorMessage" type="string"/>
    </daws:OutputData>
  </daws:Outputs>
</daws:Results>
};

declare variable $ErrMsg as xs:string external;

xf:ResultSet_to_RespXml($ErrMsg)]]></con:xquery>
    <con:dependency location="../Schemas/Results.xsd">
        <con:schema ref="XBS_RightOpt_Service/Resources/Schemas/Results"/>
    </con:dependency>
</con:xqueryEntry>