<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$Rules" type="xs:anyType" ::)
(:: pragma  parameter="$Operation" type="xs:anyType" ::)
(:: pragma  type="xs:string" ::)


declare namespace xf = "http://tempuri.org/XeroxWS/Resources/Transformations/getServicesXQ/";

declare function xf:getServicesXQ($Rules as element(*),
    $Operation as xs:string)
    as xs:string {
       let $Result := for $Rule in $Rules//Operations/Operation[@Name= $Operation]/RoutingRules/*
		let $TransXQOperation:= $Rule/Transformation/XQ/@Name
		for $RoutingAddress in $Rules//RoutingServices/RoutingXQ[@Name = $TransXQOperation]/Address
		return $RoutingAddress
		return data($Result)

};

declare variable $Rules as element(*) external;
declare variable $Operation as xs:string external;

xf:getServicesXQ($Rules,
    $Operation)</con:xquery>
</con:xqueryEntry>