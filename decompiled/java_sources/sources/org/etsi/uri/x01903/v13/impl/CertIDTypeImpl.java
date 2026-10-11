package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CertIDType;
import org.etsi.uri.x01903.v13.DigestAlgAndValueType;
import org.p120w3.x2000.x09.xmldsig.X509IssuerSerialType;

/* loaded from: classes13.dex */
public class CertIDTypeImpl extends XmlComplexContentImpl implements CertIDType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CertDigest"), new QName(SignatureFacet.XADES_132_NS, "IssuerSerial"), new QName("", "URI")};
    private static final long serialVersionUID = 1;

    public CertIDTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public DigestAlgAndValueType addNewCertDigest() {
        DigestAlgAndValueType digestAlgAndValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestAlgAndValueType = (DigestAlgAndValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return digestAlgAndValueType;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public X509IssuerSerialType addNewIssuerSerial() {
        X509IssuerSerialType x509IssuerSerialType;
        synchronized (monitor()) {
            check_orphaned();
            x509IssuerSerialType = (X509IssuerSerialType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return x509IssuerSerialType;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public DigestAlgAndValueType getCertDigest() {
        DigestAlgAndValueType digestAlgAndValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestAlgAndValueType = (DigestAlgAndValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (digestAlgAndValueType == null) {
                digestAlgAndValueType = null;
            }
        }
        return digestAlgAndValueType;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public X509IssuerSerialType getIssuerSerial() {
        X509IssuerSerialType x509IssuerSerialType;
        synchronized (monitor()) {
            check_orphaned();
            x509IssuerSerialType = (X509IssuerSerialType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (x509IssuerSerialType == null) {
                x509IssuerSerialType = null;
            }
        }
        return x509IssuerSerialType;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public String getURI() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public boolean isSetURI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public void setCertDigest(DigestAlgAndValueType digestAlgAndValueType) {
        generatedSetterHelperImpl(digestAlgAndValueType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public void setIssuerSerial(X509IssuerSerialType x509IssuerSerialType) {
        generatedSetterHelperImpl(x509IssuerSerialType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
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

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public void unsetURI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
    public XmlAnyURI xgetURI() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.CertIDType
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
