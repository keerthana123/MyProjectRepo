<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[<Rules>
<Operations>
<Operation Name="Operation1">
<RoutingRules>
<RoutingRule>
<Transformation>
<XQ Name="Case1_XQ"/>
</Transformation>
</RoutingRule>
</RoutingRules>
</Operation>

<Operation Name="Operation2">
<RoutingRules>
<RoutingRule>
<Transformation>
<XQ Name="Case2_XQ"/>
</Transformation>
</RoutingRule>
</RoutingRules>
</Operation>

<Operation Name="Operation3">
<RoutingRules>
<RoutingRule>
<Transformation>
<XQ Name="Case3_XQ"/>
</Transformation>
</RoutingRule>
</RoutingRules>
</Operation>
</Operations>
<RoutingServices>
<RoutingXQ Name="Case1_XQ">
<Address>#ProjectName/#FolderName1/#XqueryName1</Address>
</RoutingXQ>
<RoutingXQ Name="Case2_XQ">
<Address>#ProjectName/#FolderName2/#XqueryName2</Address>
</RoutingXQ>
<RoutingXQ Name="Case3_XQ">
<Address>#ProjectName/#FolderName3/#XqueryName3</Address>
</RoutingXQ>
</RoutingServices>
</Rules>]]></con:xquery>
</con:xqueryEntry>