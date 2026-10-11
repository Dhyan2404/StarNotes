package org.etsi.uri.x01903.v14.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CertificateValuesType;
import org.etsi.uri.x01903.v13.RevocationValuesType;
import org.etsi.uri.x01903.v14.ValidationDataType;

/* loaded from: classes13.dex */
public class ValidationDataTypeImpl extends XmlComplexContentImpl implements ValidationDataType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CertificateValues"), new QName(SignatureFacet.XADES_132_NS, "RevocationValues"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME), new QName("", "URI")};
    private static final long serialVersionUID = 1;

    public ValidationDataTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public CertificateValuesType addNewCertificateValues() {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public RevocationValuesType addNewRevocationValues() {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public CertificateValuesType getCertificateValues() {
        CertificateValuesType certificateValuesType;
        synchronized (monitor()) {
            check_orphaned();
            certificateValuesType = (CertificateValuesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (certificateValuesType == null) {
                certificateValuesType = null;
            }
        }
        return certificateValuesType;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public RevocationValuesType getRevocationValues() {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (revocationValuesType == null) {
                revocationValuesType = null;
            }
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public String getURI() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public boolean isSetCertificateValues() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public boolean isSetRevocationValues() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public boolean isSetURI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void setCertificateValues(CertificateValuesType certificateValuesType) {
        generatedSetterHelperImpl(certificateValuesType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void setId(String str) {
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

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void setRevocationValues(RevocationValuesType revocationValuesType) {
        generatedSetterHelperImpl(revocationValuesType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
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

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void unsetCertificateValues() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void unsetRevocationValues() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void unsetURI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public XmlAnyURI xgetURI() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v14.ValidationDataType
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
