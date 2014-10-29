<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[<routing>
  <row>
    <SPNAME>KLG_RKS_ACS..g_SavingsInSight_dc</SPNAME>
    <JDBC>jdbc/KLG_RKS_ACS_DS</JDBC>
    <OPERATION>RightOPt_ACS</OPERATION>
    <Address>RightOpt_GenericBS_MultipleOperations/Resources/Transformations/ReqXML_to_ACS</Address>
    <Address_Response>RightOpt_GenericBS_MultipleOperations/Resources/Transformations/ACSResp_to_RespXML</Address_Response>
    <PLAN_NR>plan_nr</PLAN_NR>
	<COMP_NR>comp_nr</COMP_NR>
	<SSN_NR>ssn_nr</SSN_NR>
	<Response>Response_ACS</Response>
  </row>
  <row>
    <SPNAME>KLG_RKS_XRX..g_RightOpt</SPNAME>
    <JDBC>jdbc/KLG_RKS_XRX_DS</JDBC>
    <OPERATION>RightOpt_XRX</OPERATION>
    <Address>RightOpt_GenericBS_MultipleOperations/Resources/Transformations/ReqXML_to_XRX</Address>
    <Address_Response>RightOpt_GenericBS_MultipleOperations/Resources/Transformations/XRXResp_to_RespXML</Address_Response>
    <SPNAME>KLG_RKS_XRX..g_RightOpt</SPNAME>
	<PLAN_NR>plan_nr</PLAN_NR>
	<COMP_NR>comp_nr</COMP_NR>	
	<ID>ID</ID>
	<Response>Response_XRX</Response>
  </row>
</routing>]]></con:xquery>
</con:xqueryEntry>