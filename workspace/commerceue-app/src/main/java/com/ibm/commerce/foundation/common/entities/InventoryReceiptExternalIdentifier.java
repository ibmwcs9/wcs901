//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.11.16 at 11:14:39 AM CST 
//


package com.ibm.commerce.foundation.common.entities;

import javax.xml.datatype.XMLGregorianCalendar;

import com.ibm.commerce.copyright.IBMCopyright;


/**
 * The type definition of an external identifier for an inventory receipt.
 * 
 * <p>Java class for InventoryReceiptExternalIdentifier complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="InventoryReceiptExternalIdentifier">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="CatalogEntryIdentifier" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}CatalogEntryIdentifier"/>
 *         &lt;element name="StoreIdentifier" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}StoreIdentifier"/>
 *         &lt;element name="FulfillmentCenterIdentifier" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}FulfillmentCenterIdentifier"/>
 *         &lt;element name="CreationTime" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
public class InventoryReceiptExternalIdentifier {

	/**
	 * IBM copyright notice field.
	 */
	@SuppressWarnings("unused")
	private static final String COPYRIGHT = IBMCopyright.SHORT_COPYRIGHT;
	
    protected CatalogEntryIdentifier catalogEntryIdentifier;
    protected StoreIdentifier storeIdentifier;
    protected FulfillmentCenterIdentifier fulfillmentCenterIdentifier;
    protected XMLGregorianCalendar creationTime;

    /**
     * Gets the value of the catalogEntryIdentifier property.
     * 
     * @return
     *     possible object is
     *     {@link CatalogEntryIdentifier }
     *     
     */
    public CatalogEntryIdentifier getCatalogEntryIdentifier() {
        return catalogEntryIdentifier;
    }

    /**
     * Sets the value of the catalogEntryIdentifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link CatalogEntryIdentifier }
     *     
     */
    public void setCatalogEntryIdentifier(CatalogEntryIdentifier value) {
        this.catalogEntryIdentifier = value;
    }

    /**
     * Gets the value of the storeIdentifier property.
     * 
     * @return
     *     possible object is
     *     {@link StoreIdentifier }
     *     
     */
    public StoreIdentifier getStoreIdentifier() {
        return storeIdentifier;
    }

    /**
     * Sets the value of the storeIdentifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link StoreIdentifier }
     *     
     */
    public void setStoreIdentifier(StoreIdentifier value) {
        this.storeIdentifier = value;
    }

    /**
     * Gets the value of the fulfillmentCenterIdentifier property.
     * 
     * @return
     *     possible object is
     *     {@link FulfillmentCenterIdentifier }
     *     
     */
    public FulfillmentCenterIdentifier getFulfillmentCenterIdentifier() {
        return fulfillmentCenterIdentifier;
    }

    /**
     * Sets the value of the fulfillmentCenterIdentifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link FulfillmentCenterIdentifier }
     *     
     */
    public void setFulfillmentCenterIdentifier(FulfillmentCenterIdentifier value) {
        this.fulfillmentCenterIdentifier = value;
    }

    /**
     * Gets the value of the creationTime property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getCreationTime() {
        return creationTime;
    }

    /**
     * Sets the value of the creationTime property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setCreationTime(XMLGregorianCalendar value) {
        this.creationTime = value;
    }

}
