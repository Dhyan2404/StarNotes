package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.DigestMethodType;
import org.p120w3.x2000.x09.xmldsig.DigestValueType;
import org.p120w3.x2000.x09.xmldsig.ReferenceType;
import org.p120w3.x2000.x09.xmldsig.TransformsType;

/* loaded from: classes16.dex */
public class ReferenceTypeImpl extends XmlComplexContentImpl implements ReferenceType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Transforms"), new QName(SignatureFacet.XML_DIGSIG_NS, "DigestMethod"), new QName(SignatureFacet.XML_DIGSIG_NS, "DigestValue"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME), new QName("", "URI"), new QName("", "Type")};
    private static final long serialVersionUID = 1;

    public ReferenceTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public DigestMethodType addNewDigestMethod() {
        DigestMethodType digestMethodType;
        synchronized (monitor()) {
            check_orphaned();
            digestMethodType = (DigestMethodType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return digestMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public TransformsType addNewTransforms() {
        TransformsType transformsType;
        synchronized (monitor()) {
            check_orphaned();
            transformsType = (TransformsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return transformsType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public DigestMethodType getDigestMethod() {
        DigestMethodType digestMethodType;
        synchronized (monitor()) {
            check_orphaned();
            digestMethodType = (DigestMethodType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (digestMethodType == null) {
                digestMethodType = null;
            }
        }
        return digestMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public byte[] getDigestValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public TransformsType getTransforms() {
        TransformsType transformsType;
        synchronized (monitor()) {
            check_orphaned();
            transformsType = (TransformsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (transformsType == null) {
                transformsType = null;
            }
        }
        return transformsType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public String getType() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public String getURI() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public boolean isSetTransforms() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public boolean isSetURI() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void setDigestMethod(DigestMethodType digestMethodType) {
        generatedSetterHelperImpl(digestMethodType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void setDigestValue(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[2], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[2]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
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

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void setTransforms(TransformsType transformsType) {
        generatedSetterHelperImpl(transformsType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void setType(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void setURI(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void unsetTransforms() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void unsetURI() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public DigestValueType xgetDigestValue() {
        DigestValueType digestValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestValueType = (DigestValueType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
        }
        return digestValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlID;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public XmlAnyURI xgetType() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlAnyURI;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public XmlAnyURI xgetURI() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlAnyURI;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void xsetDigestValue(DigestValueType digestValueType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            DigestValueType digestValueType2 = (DigestValueType) typeStore.find_element_user(qNameArr[2], 0);
            if (digestValueType2 == null) {
                digestValueType2 = (DigestValueType) get_store().add_element_user(qNameArr[2]);
            }
            digestValueType2.set(digestValueType);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
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

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void xsetType(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ReferenceType
    public void xsetURI(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }
}
