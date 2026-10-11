package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.QualifyingPropertiesType;
import org.etsi.uri.x01903.v13.SignedPropertiesType;
import org.etsi.uri.x01903.v13.UnsignedPropertiesType;

/* loaded from: classes13.dex */
public class QualifyingPropertiesTypeImpl extends XmlComplexContentImpl implements QualifyingPropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignedProperties"), new QName(SignatureFacet.XADES_132_NS, "UnsignedProperties"), new QName("", PackageRelationship.TARGET_ATTRIBUTE_NAME), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public QualifyingPropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public SignedPropertiesType addNewSignedProperties() {
        SignedPropertiesType signedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedPropertiesType = (SignedPropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public UnsignedPropertiesType addNewUnsignedProperties() {
        UnsignedPropertiesType unsignedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedPropertiesType = (UnsignedPropertiesType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return unsignedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public SignedPropertiesType getSignedProperties() {
        SignedPropertiesType signedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            signedPropertiesType = (SignedPropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedPropertiesType == null) {
                signedPropertiesType = null;
            }
        }
        return signedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public String getTarget() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public UnsignedPropertiesType getUnsignedProperties() {
        UnsignedPropertiesType unsignedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedPropertiesType = (UnsignedPropertiesType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (unsignedPropertiesType == null) {
                unsignedPropertiesType = null;
            }
        }
        return unsignedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public boolean isSetSignedProperties() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public boolean isSetUnsignedProperties() {
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

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void setId(String str) {
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

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void setSignedProperties(SignedPropertiesType signedPropertiesType) {
        generatedSetterHelperImpl(signedPropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void setTarget(String str) {
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

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void setUnsignedProperties(UnsignedPropertiesType unsignedPropertiesType) {
        generatedSetterHelperImpl(unsignedPropertiesType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void unsetSignedProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void unsetUnsignedProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public XmlAnyURI xgetTarget() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v13.QualifyingPropertiesType
    public void xsetTarget(XmlAnyURI xmlAnyURI) {
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
