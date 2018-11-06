//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2015.11.16 at 11:14:39 AM CST 
//


package com.ibm.commerce.foundation.common.entities;

import com.ibm.commerce.copyright.IBMCopyright;



/**
 * The subscription information type encapsulates the payment information for a subscription along with the fulfillment schedule and payment schedule.
 * 
 * <p>Java class for SubscriptionInfo complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="SubscriptionInfo">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="PaymentInfo" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}SubscriptionPaymentInfo" minOccurs="0"/>
 *         &lt;element name="FulfillmentSchedule" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}ScheduleInfo" minOccurs="0"/>
 *         &lt;element name="PaymentSchedule" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}ScheduleInfo" minOccurs="0"/>
 *         &lt;element name="UserData" type="{http://www.ibm.com/xmlns/prod/commerce/9/foundation}UserData" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
public class SubscriptionInfo {

	/**
	 * IBM copyright notice field.
	 */
	@SuppressWarnings("unused")
	private static final String COPYRIGHT = IBMCopyright.SHORT_COPYRIGHT;
	
    protected SubscriptionPaymentInfo paymentInfo;
    protected ScheduleInfo fulfillmentSchedule;
    protected ScheduleInfo paymentSchedule;
    protected UserData userData;

    /**
     * Gets the value of the paymentInfo property.
     * 
     * @return
     *     possible object is
     *     {@link SubscriptionPaymentInfo }
     *     
     */
    public SubscriptionPaymentInfo getPaymentInfo() {
        return paymentInfo;
    }

    /**
     * Sets the value of the paymentInfo property.
     * 
     * @param value
     *     allowed object is
     *     {@link SubscriptionPaymentInfo }
     *     
     */
    public void setPaymentInfo(SubscriptionPaymentInfo value) {
        this.paymentInfo = value;
    }

    /**
     * Gets the value of the fulfillmentSchedule property.
     * 
     * @return
     *     possible object is
     *     {@link ScheduleInfo }
     *     
     */
    public ScheduleInfo getFulfillmentSchedule() {
        return fulfillmentSchedule;
    }

    /**
     * Sets the value of the fulfillmentSchedule property.
     * 
     * @param value
     *     allowed object is
     *     {@link ScheduleInfo }
     *     
     */
    public void setFulfillmentSchedule(ScheduleInfo value) {
        this.fulfillmentSchedule = value;
    }

    /**
     * Gets the value of the paymentSchedule property.
     * 
     * @return
     *     possible object is
     *     {@link ScheduleInfo }
     *     
     */
    public ScheduleInfo getPaymentSchedule() {
        return paymentSchedule;
    }

    /**
     * Sets the value of the paymentSchedule property.
     * 
     * @param value
     *     allowed object is
     *     {@link ScheduleInfo }
     *     
     */
    public void setPaymentSchedule(ScheduleInfo value) {
        this.paymentSchedule = value;
    }

    /**
     * Gets the value of the userData property.
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

}
