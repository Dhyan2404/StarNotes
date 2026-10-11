package org.etsi.uri.x01903.v13.impl;

import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import java.math.BigInteger;
import java.util.Calendar;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CRLIdentifierType;

/* loaded from: classes13.dex */
public class CRLIdentifierTypeImpl extends XmlComplexContentImpl implements CRLIdentifierType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "Issuer"), new QName(SignatureFacet.XADES_132_NS, "IssueTime"), new QName(SignatureFacet.XADES_132_NS, UrlTemplate.f25861f), new QName("", "URI")};
    private static final long serialVersionUID = 1;

    public CRLIdentifierTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public Calendar getIssueTime() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public String getIssuer() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public BigInteger getNumber() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public String getURI() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public boolean isSetNumber() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public boolean isSetURI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void setIssueTime(Calendar calendar) {
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

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void setIssuer(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void setNumber(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[2], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[2]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void setURI(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void unsetNumber() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void unsetURI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public XmlDateTime xgetIssueTime() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return xmlDateTime;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public XmlString xgetIssuer() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlString;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public XmlInteger xgetNumber() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_element_user(PROPERTY_QNAME[2], 0);
        }
        return xmlInteger;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public XmlAnyURI xgetURI() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void xsetIssueTime(XmlDateTime xmlDateTime) {
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

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void xsetIssuer(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[0]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void xsetNumber(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_element_user(qNameArr[2], 0);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_element_user(qNameArr[2]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLIdentifierType
    public void xsetURI(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }
}
