//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.11.16 at 11:14:39 AM CST 
//


package com.ibm.commerce.order.entities;

import javax.xml.datatype.XMLGregorianCalendar;

import com.ibm.commerce.copyright.IBMCopyright;
import com.ibm.commerce.foundation.common.entities.UserData;


/**
 * <p>Java class for OrderBlock complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="OrderBlock">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Comments" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="TimeBlocked" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/>
 *         &lt;element ref="{http://www.ibm.com/xmlns/prod/commerce/9/order}BlockReason" minOccurs="0"/>
 *         &lt;element ref="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}UserData" minOccurs="0"/>
 *       &lt;/sequence>
 *       &lt;attribute name="resovled" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
public class OrderBlock {

	/**
	 * IBM copyright notice field.
	 */
	@SuppressWarnings("unused")
	private static final String COPYRIGHT = IBMCopyright.SHORT_COPYRIGHT;
	
    protected String comments;
    protected XMLGregorianCalendar timeBlocked;
    protected BlockReason blockReason;
    protected UserData userData;
    protected Boolean resovled;

    /**
     * Gets the value of the comments property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getComments() {
        return comments;
    }

    /**
     * Sets the value of the comments property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setComments(String value) {
        this.comments = value;
    }

    /**
     * Gets the value of the timeBlocked property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getTimeBlocked() {
        return timeBlocked;
    }

    /**
     * Sets the value of the timeBlocked property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setTimeBlocked(XMLGregorianCalendar value) {
        this.timeBlocked = value;
    }

    /**
     * Gets the value of the blockReason property.
     * 
     * @return
     *     possible object is
     *     {@link BlockReason }
     *     
     */
    public BlockReason getBlockReason() {
        return blockReason;
    }

    /**
     * Sets the value of the blockReason property.
     * 
     * @param value
     *     allowed object is
     *     {@link BlockReason }
     *     
     */
    public void setBlockReason(BlockReason value) {
        this.blockReason = value;
    }

    /**
     * The user data area.
     * 
     * @return
     *     possible object is
     *     {@link UserData }
     *     
     */
    public UserData getUserData() {
        return userData;
    }

    /**
     * Sets the value of the userData property.
     * 
     * @param value
     *     allowed object is
     *     {@link UserData }
     *     
     */
    public void setUserData(UserData value) {
        this.userData = value;
    }

    /**
     * Gets the value of the resovled property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isResovled() {
        return resovled;
    }

    /**
     * Sets the value of the resovled property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setResovled(Boolean value) {
        this.resovled = value;
    }

}