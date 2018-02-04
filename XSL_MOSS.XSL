<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saf="urn:safmoss:v1" exclude-result-prefixes="saf" >

<!-- XSL sheet voor MOSS naar HTML -->
<!-- XSL voor het converteren van een MOSS naar een HTML pagina voor weergave in de browser -->
<!-- Gegenereerd op 2018-02-04   - 19:34:40 -->

<xsl:output method="html" />

<xsl:template match="/">
  <html>
  <body>

    <!-- Inhoudsopgaaf -->
    <table id="inhoudsopgaaf">
      <caption>Inhoud</caption>
      <thead><tr><th>Tabel</th><th>Omschrijving</th><th></th></tr></thead>
      <tbody>
        <tr><td><a href="#XHeaderX">Header</a></td><td> todo: omschrijving tabel </td><td></td></tr>
        <tr><td><a href="#XCustomerX">Customer</a></td><td> todo: omschrijving tabel </td><td></td></tr>
        <tr><td><a href="#XServiceTransactionsX">ServiceTransactions</a></td><td> todo: omschrijving tabel </td><td></td></tr>
        <tr><td><a href="#XServiceTransactionX">ServiceTransaction</a></td><td> todo: omschrijving tabel </td><td></td></tr>
        <tr><td><a href="#XEvidenceforCustomerLocationX">EvidenceforCustomerLocation</a></td><td> todo: omschrijving tabel </td><td></td></tr>
        <tr><td><a href="#XServiceTran_LineX">ServiceTran_Line</a></td><td> todo: omschrijving tabel </td><td></td></tr>
        <tr><td><a href="#XServiceTran_PaymentX">ServiceTran_Payment</a></td><td> todo: omschrijving tabel </td><td></td></tr>
      </tbody>
    </table>


    <!-- Header -->
    <p></p><a id="XHeaderX"></a>
    <table class="sortable" id="Header">
      <caption>Tabel Header</caption>
      <thead>
      <tr>
        <th>SAF-MOSSFileVersion</th>
        <th>SAF-MOSFileDateCreated</th>
        <th>SAF-MOSSFileCountry</th>
        <th>MOSSVATRegistrationNumber</th>
        <th>StartDate</th>
        <th>EndDate</th>
        <th>HeaderComment</th>
        <th>NameFree</th>
        <th>PrecedingTitle</th>
        <th>Title</th>
        <th>FirstName</th>
        <th>MiddleName</th>
        <th>NamePrefix</th>
        <th>LastName</th>
        <th>GenerationIdentifier</th>
        <th>Suffix</th>
        <th>GeneralSuffix</th>
        <th>MaidenName</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:header">
      <tr>
        <td><xsl:value-of select="saf:SAF-MOSSFileVersion"/></td>
        <td><xsl:value-of select="saf:SAF-MOSFileDateCreated"/></td>
        <td><xsl:value-of select="saf:SAF-MOSSFileCountry"/></td>
        <td><xsl:value-of select="saf:MOSSVATRegistrationNumber"/></td>
        <td><xsl:value-of select="saf:StartDate"/></td>
        <td><xsl:value-of select="saf:EndDate"/></td>
        <td><xsl:value-of select="saf:HeaderComment"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameFree"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:PrecedingTitle"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:Title"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:FirstName"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:MiddleName"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:NamePrefix"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:LastName"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:GenerationIdentifier"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:Suffix"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:GeneralSuffix"/></td>
        <td><xsl:value-of select="saf:CompanyName/saf:NameStruct/saf:MaidenName"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

    <!-- Customer -->
    <p></p><a id="XCustomerX"></a>
    <table class="sortable" id="Customer">
      <caption>Tabel Customer</caption>
      <thead>
      <tr>
        <th>CustomerID</th>
        <th>Telephone</th>
        <th>Email</th>
        <th>NameFree</th>
        <th>PrecedingTitle</th>
        <th>Title</th>
        <th>FirstName</th>
        <th>MiddleName</th>
        <th>NamePrefix</th>
        <th>LastName</th>
        <th>GenerationIdentifier</th>
        <th>Suffix</th>
        <th>GeneralSuffix</th>
        <th>MaidenName</th>
        <th>BillingAddr_AddressFree</th>
        <th>BillingAddr_Country</th>
        <th>BillingAddr_Street</th>
        <th>BillingAddr_BuildingIdentifier</th>
        <th>BillingAddr_SuiteIdentifier</th>
        <th>BillingAddr_FloorIdentifier</th>
        <th>BillingAddr_DistrictName</th>
        <th>BillingAddr_POB</th>
        <th>BillingAddr_PostCode</th>
        <th>BillingAddr_City</th>
        <th>BillingAddr_CountrySubentity</th>
        <th>BillingAddr_OtherLocalId</th>
        <th>ShipToAddr_AddressFree</th>
        <th>ShipToAddr_Country</th>
        <th>ShipToAddr_Street</th>
        <th>ShipToAddr_BuildingIdentifier</th>
        <th>ShipToAddr_SuiteIdentifier</th>
        <th>ShipToAddr_FloorIdentifier</th>
        <th>ShipToAddr_DistrictName</th>
        <th>ShipToAddr_POB</th>
        <th>ShipToAddr_PostCode</th>
        <th>ShipToAddr_City</th>
        <th>ShipToAddr_CountrySubentity</th>
        <th>ShipToAddr_OtherLocalId</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:MasterFiles/saf:Customer">
      <tr>
        <td><xsl:value-of select="saf:CustomerID"/></td>
        <td><xsl:value-of select="saf:Telephone"/></td>
        <td><xsl:value-of select="saf:Email"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameFree"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:PrecedingTitle"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:Title"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:FirstName"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:MiddleName"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:NamePrefix"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:LastName"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:GenerationIdentifier"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:Suffix"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:GeneralSuffix"/></td>
        <td><xsl:value-of select="saf:CustomerName/saf:NameStruct/saf:MaidenName"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressFree"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:Country"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:Street"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:BuildingIdentifier"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:SuiteIdentifier"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:FloorIdentifier"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:DistrictName"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:POB"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:PostCode"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:City"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:CountrySubentity"/></td>
        <td><xsl:value-of select="saf:BillingAddress/saf:AddressStruct/saf:OtherLocalId"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressFree"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:Country"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:Street"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:BuildingIdentifier"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:SuiteIdentifier"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:FloorIdentifier"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:DistrictName"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:POB"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:PostCode"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:City"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:CountrySubentity"/></td>
        <td><xsl:value-of select="saf:ShipToAddress/saf:AddressStruct/saf:OtherLocalId"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

    <!-- ServiceTransactions -->
    <p></p><a id="XServiceTransactionsX"></a>
    <table class="sortable" id="ServiceTransactions">
      <caption>Tabel ServiceTransactions</caption>
      <thead>
      <tr>
        <th>NumberOfEntries</th>
        <th>TotalDebit</th>
        <th>TotalCredit</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:ServiceTransactions">
      <tr>
        <td class="num"><xsl:value-of select="saf:NumberOfEntries"/></td>
        <td class="num"><xsl:value-of select="saf:TotalDebit"/></td>
        <td class="num"><xsl:value-of select="saf:TotalCredit"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

    <!-- ServiceTransaction -->
    <p></p><a id="XServiceTransactionX"></a>
    <table class="sortable" id="ServiceTransaction">
      <caption>Tabel ServiceTransaction</caption>
      <thead>
      <tr>
        <th>ServiceTransactionNo</th>
        <th>Period</th>
        <th>ServiceTransactionDate</th>
        <th>ServiceTransactionType</th>
        <th>SystemEntryDate</th>
        <th>CustomerID</th>
        <th>ServiceTransactionstatus</th>
        <th>ServiceTransactionstatusDate</th>
        <th>Reason</th>
        <th>Country</th>
        <th>ShipTo_AddressFree</th>
        <th>ShipTo_Country</th>
        <th>ShipTo_Street</th>
        <th>ShipTo_BuildingIdentifier</th>
        <th>ShipTo_SuiteIdentifier</th>
        <th>ShipTo_FloorIdentifier</th>
        <th>ShipTo_DistrictName</th>
        <th>ShipTo_POB</th>
        <th>ShipTo_PostCode</th>
        <th>ShipTo_City</th>
        <th>ShipTo_CountrySubentity</th>
        <th>ShipTo_OtherLocalId</th>
        <th>TaxPayable</th>
        <th>TaxableAmount</th>
        <th>GrossTotal</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:ServiceTransactions/saf:ServiceTransaction">
      <tr>
        <td><xsl:value-of select="saf:ServiceTransactionNo"/></td>
        <td><xsl:value-of select="saf:Period"/></td>
        <td><xsl:value-of select="saf:ServiceTransactionDate"/></td>
        <td><xsl:value-of select="saf:ServiceTransactionType"/></td>
        <td><xsl:value-of select="saf:SystemEntryDate"/></td>
        <td><xsl:value-of select="saf:CustomerID"/></td>
        <td><xsl:value-of select="saf:DocumentStatus/saf:ServiceTransactionstatus"/></td>
        <td><xsl:value-of select="saf:DocumentStatus/saf:ServiceTransactionstatusDate"/></td>
        <td><xsl:value-of select="saf:DocumentStatus/saf:Reason"/></td>
        <td><xsl:value-of select="saf:MSC/saf:Country"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressFree"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:Country"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:Street"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:BuildingIdentifier"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:SuiteIdentifier"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:FloorIdentifier"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:DistrictName"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:POB"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:PostCode"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:City"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:CountrySubentity"/></td>
        <td><xsl:value-of select="saf:MSC/saf:ShipToAddress/saf:AddressStruct/saf:OtherLocalId"/></td>
        <td class="num"><xsl:value-of select="saf:DocumentTotal/saf:TaxPayable"/></td>
        <td class="num"><xsl:value-of select="saf:DocumentTotal/saf:TaxableAmount"/></td>
        <td class="num"><xsl:value-of select="saf:DocumentTotal/saf:GrossTotal"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

    <!-- EvidenceforCustomerLocation -->
    <p></p><a id="XEvidenceforCustomerLocationX"></a>
    <table class="sortable" id="EvidenceforCustomerLocation">
      <caption>Tabel EvidenceforCustomerLocation</caption>
      <thead>
      <tr>
        <th>EvidenceforCustomerLocation</th>
<!-- Sleutel naar veld ServiceTransactionNo in tabel ServiceTransaction -->
        <th>ServiceTransaction_ServiceTransactionNo</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:ServiceTransactions/saf:ServiceTransaction/saf:MSC">
      <tr>
        <td><xsl:value-of select="saf:EvidenceforCustomerLocation"/></td>
<!-- Sleutel naar veld ServiceTransactionNo in tabel ServiceTransaction -->
        <td><xsl:value-of select="../saf:ServiceTransactionNo"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

    <!-- ServiceTran_Line -->
    <p></p><a id="XServiceTran_LineX"></a>
    <table class="sortable" id="ServiceTran_Line">
      <caption>Tabel ServiceTran_Line</caption>
      <thead>
      <tr>
        <th>LineNumber</th>
        <th>ServiceCode</th>
        <th>ServiceDescription</th>
        <th>Quantity</th>
        <th>UnitOfMeasure</th>
        <th>UnitPrice</th>
        <th>DateofSupply</th>
        <th>DebitAmount</th>
        <th>CreditAmount</th>
        <th>SettlementAmount</th>
        <th>Reference</th>
        <th>Reason</th>
        <th>TaxCountryRegion</th>
        <th>TaxCode</th>
        <th>VATRate</th>
<!-- Sleutel naar veld ServiceTransactionNo in tabel ServiceTransaction -->
        <th>ServiceTransaction_ServiceTransactionNo</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:ServiceTransactions/saf:ServiceTransaction/saf:Line">
      <tr>
        <td class="num"><xsl:value-of select="saf:LineNumber"/></td>
        <td><xsl:value-of select="saf:ServiceCode"/></td>
        <td><xsl:value-of select="saf:ServiceDescription"/></td>
        <td class="num"><xsl:value-of select="saf:Quantity"/></td>
        <td><xsl:value-of select="saf:UnitOfMeasure"/></td>
        <td class="num"><xsl:value-of select="saf:UnitPrice"/></td>
        <td><xsl:value-of select="saf:DateofSupply"/></td>
        <td class="num"><xsl:value-of select="saf:DebitAmount"/></td>
        <td class="num"><xsl:value-of select="saf:CreditAmount"/></td>
        <td class="num"><xsl:value-of select="saf:SettlementAmount"/></td>
        <td><xsl:value-of select="saf:References/saf:Reference"/></td>
        <td><xsl:value-of select="saf:References/saf:Reason"/></td>
        <td><xsl:value-of select="saf:Tax/saf:TaxCountryRegion"/></td>
        <td><xsl:value-of select="saf:Tax/saf:TaxCode"/></td>
        <td class="num"><xsl:value-of select="saf:Tax/saf:VATRate"/></td>
<!-- Sleutel naar veld ServiceTransactionNo in tabel ServiceTransaction -->
        <td><xsl:value-of select="../saf:ServiceTransactionNo"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

    <!-- ServiceTran_Payment -->
    <p></p><a id="XServiceTran_PaymentX"></a>
    <table class="sortable" id="ServiceTran_Payment">
      <caption>Tabel ServiceTran_Payment</caption>
      <thead>
      <tr>
        <th>PaymentType</th>
        <th>PaymentDate</th>
        <th>PaymentAmount</th>
        <th>PaymentMechanism</th>
<!-- Sleutel naar veld ServiceTransactionNo in tabel ServiceTransaction -->
        <th>ServiceTransaction_ServiceTransactionNo</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="saf:SAF-MOSS/saf:ServiceTransactions/saf:ServiceTransaction/saf:DocumentTotal/saf:Payment">
      <tr>
        <td><xsl:value-of select="saf:PaymentType"/></td>
        <td><xsl:value-of select="saf:PaymentDate"/></td>
        <td class="num"><xsl:value-of select="saf:PaymentAmount"/></td>
        <td><xsl:value-of select="saf:PaymentMechanism"/></td>
<!-- Sleutel naar veld ServiceTransactionNo in tabel ServiceTransaction -->
        <td><xsl:value-of select="../saf:ServiceTransactionNo"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

<!-- Einde XSL sheet voor MOSS -->

