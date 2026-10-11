package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType;
import org.etsi.uri.x01903.v13.UnsignedPropertiesType;
import org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType;

/* loaded from: classes13.dex */
public class UnsignedPropertiesTypeImpl extends XmlComplexContentImpl implements UnsignedPropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "UnsignedSignatureProperties"), new QName(SignatureFacet.XADES_132_NS, "UnsignedDataObjectProperties"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public UnsignedPropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public UnsignedDataObjectPropertiesType addNewUnsignedDataObjectProperties() {
        UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedDataObjectPropertiesType = (UnsignedDataObjectPropertiesType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return unsignedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public UnsignedSignaturePropertiesType addNewUnsignedSignatureProperties() {
        UnsignedSignaturePropertiesType unsignedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedSignaturePropertiesType = (UnsignedSignaturePropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return unsignedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public UnsignedDataObjectPropertiesType getUnsignedDataObjectProperties() {
        UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedDataObjectPropertiesType = (UnsignedDataObjectPropertiesType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (unsignedDataObjectPropertiesType == null) {
                unsignedDataObjectPropertiesType = null;
            }
        }
        return unsignedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public UnsignedSignaturePropertiesType getUnsignedSignatureProperties() {
        UnsignedSignaturePropertiesType unsignedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedSignaturePropertiesType = (UnsignedSignaturePropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (unsignedSignaturePropertiesType == null) {
                unsignedSignaturePropertiesType = null;
            }
        }
        return unsignedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public boolean isSetUnsignedDataObjectProperties() {
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

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public boolean isSetUnsignedSignatureProperties() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
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

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public void setUnsignedDataObjectProperties(UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType) {
        generatedSetterHelperImpl(unsignedDataObjectPropertiesType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public void setUnsignedSignatureProperties(UnsignedSignaturePropertiesType unsignedSignaturePropertiesType) {
        generatedSetterHelperImpl(unsignedSignaturePropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public void unsetUnsignedDataObjectProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public void unsetUnsignedSignatureProperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesType
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
