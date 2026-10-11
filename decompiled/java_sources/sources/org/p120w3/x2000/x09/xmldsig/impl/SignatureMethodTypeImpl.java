package org.p120w3.x2000.x09.xmldsig.impl;

import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.HMACOutputLengthType;
import org.p120w3.x2000.x09.xmldsig.SignatureMethodType;

/* loaded from: classes16.dex */
public class SignatureMethodTypeImpl extends XmlComplexContentImpl implements SignatureMethodType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "HMACOutputLength"), new QName("", "Algorithm")};
    private static final long serialVersionUID = 1;

    public SignatureMethodTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public String getAlgorithm() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public BigInteger getHMACOutputLength() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public boolean isSetHMACOutputLength() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public void setAlgorithm(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public void setHMACOutputLength(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public void unsetHMACOutputLength() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public XmlAnyURI xgetAlgorithm() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlAnyURI;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public HMACOutputLengthType xgetHMACOutputLength() {
        HMACOutputLengthType hMACOutputLengthType;
        synchronized (monitor()) {
            check_orphaned();
            hMACOutputLengthType = (HMACOutputLengthType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return hMACOutputLengthType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public void xsetAlgorithm(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureMethodType
    public void xsetHMACOutputLength(HMACOutputLengthType hMACOutputLengthType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            HMACOutputLengthType hMACOutputLengthType2 = (HMACOutputLengthType) typeStore.find_element_user(qNameArr[0], 0);
            if (hMACOutputLengthType2 == null) {
                hMACOutputLengthType2 = (HMACOutputLengthType) get_store().add_element_user(qNameArr[0]);
            }
            hMACOutputLengthType2.set(hMACOutputLengthType);
        }
    }
}
