package org.etsi.uri.x01903.v13.impl;

import java.util.Calendar;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.OCSPIdentifierType;
import org.etsi.uri.x01903.v13.ResponderIDType;

/* loaded from: classes13.dex */
public class OCSPIdentifierTypeImpl extends XmlComplexContentImpl implements OCSPIdentifierType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "ResponderID"), new QName(SignatureFacet.XADES_132_NS, "ProducedAt"), new QName("", "URI")};
    private static final long serialVersionUID = 1;

    public OCSPIdentifierTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public ResponderIDType addNewResponderID() {
        ResponderIDType responderIDType;
        synchronized (monitor()) {
            check_orphaned();
            responderIDType = (ResponderIDType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return responderIDType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public Calendar getProducedAt() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public ResponderIDType getResponderID() {
        ResponderIDType responderIDType;
        synchronized (monitor()) {
            check_orphaned();
            responderIDType = (ResponderIDType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (responderIDType == null) {
                responderIDType = null;
            }
        }
        return responderIDType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public String getURI() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public boolean isSetURI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public void setProducedAt(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[1], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[1]);
            }
            simpleValue.setCalendarValue(calendar);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public void setResponderID(ResponderIDType responderIDType) {
        generatedSetterHelperImpl(responderIDType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public void setURI(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public void unsetURI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public XmlDateTime xgetProducedAt() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return xmlDateTime;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public XmlAnyURI xgetURI() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public void xsetProducedAt(XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDateTime xmlDateTime2 = (XmlDateTime) typeStore.find_element_user(qNameArr[1], 0);
            if (xmlDateTime2 == null) {
                xmlDateTime2 = (XmlDateTime) get_store().add_element_user(qNameArr[1]);
            }
            xmlDateTime2.set(xmlDateTime);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OCSPIdentifierType
    public void xsetURI(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }
}
