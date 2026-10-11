package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignedDataObjectPropertiesType;
import org.etsi.uri.x01903.v13.SignedPropertiesType;
import org.etsi.uri.x01903.v13.SignedSignaturePropertiesType;

/* loaded from: classes13.dex */
public class SignedPropertiesTypeImpl extends XmlComplexContentImpl implements SignedPropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignedSignatureProperties"), new QName(SignatureFacet.XADES_132_NS, "SignedDataObjectProperties"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public SignedPropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public SignedDataObjectPropertiesType addNewSignedDataObjectProperties() {
        SignedDataObjectPropertiesType signedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedDataObjectPropertiesType = (SignedDataObjectPropertiesType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return signedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public SignedSignaturePropertiesType addNewSignedSignatureProperties() {
        SignedSignaturePropertiesType signedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedSignaturePropertiesType = (SignedSignaturePropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public SignedDataObjectPropertiesType getSignedDataObjectProperties() {
        SignedDataObjectPropertiesType signedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedDataObjectPropertiesType = (SignedDataObjectPropertiesType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (signedDataObjectPropertiesType == null) {
                signedDataObjectPropertiesType = null;
            }
        }
        return signedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public SignedSignaturePropertiesType getSignedSignatureProperties() {
        SignedSignaturePropertiesType signedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedSignaturePropertiesType = (SignedSignaturePropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedSignaturePropertiesType == null) {
                signedSignaturePropertiesType = null;
            }
        }
        return signedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public boolean isSetSignedDataObjectProperties() {
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

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public boolean isSetSignedSignatureProperties() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
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

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public void setSignedDataObjectProperties(SignedDataObjectPropertiesType signedDataObjectPropertiesType) {
        generatedSetterHelperImpl(signedDataObjectPropertiesType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public void setSignedSignatureProperties(SignedSignaturePropertiesType signedSignaturePropertiesType) {
        generatedSetterHelperImpl(signedSignaturePropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public void unsetSignedDataObjectProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public void unsetSignedSignatureProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.SignedPropertiesType
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
}
