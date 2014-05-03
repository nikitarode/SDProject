<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Stock_Inventory</fullName>
        <field>Pants_Quantity__c</field>
        <formula>Levi_s_Pants__r.Pants_Quantity__c  -  Quantity__c</formula>
        <name>Update Stock Inventory</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Levi_s_Pants__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Line Item Updated</fullName>
        <actions>
            <name>Update_Stock_Inventory</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Invoice__c.Status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
