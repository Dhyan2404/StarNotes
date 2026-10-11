package org.p120w3.x2000.x09.xmldsig.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodType;
import org.p120w3.x2000.x09.xmldsig.ReferenceType;
import org.p120w3.x2000.x09.xmldsig.SignatureMethodType;
import org.p120w3.x2000.x09.xmldsig.SignedInfoType;
import org.p120w3.x2000.x09.xmldsig.impl.SignedInfoTypeImpl;

/* loaded from: classes16.dex */
public class SignedInfoTypeImpl extends XmlComplexContentImpl implements SignedInfoType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "CanonicalizationMethod"), new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureMethod"), new QName(SignatureFacet.XML_DIGSIG_NS, "Reference"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public SignedInfoTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public CanonicalizationMethodType addNewCanonicalizationMethod() {
        CanonicalizationMethodType canonicalizationMethodType;
        synchronized (monitor()) {
            check_orphaned();
            canonicalizationMethodType = (CanonicalizationMethodType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return canonicalizationMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public ReferenceType addNewReference() {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public SignatureMethodType addNewSignatureMethod() {
        SignatureMethodType signatureMethodType;
        synchronized (monitor()) {
            check_orphaned();
            signatureMethodType = (SignatureMethodType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return signatureMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public CanonicalizationMethodType getCanonicalizationMethod() {
        CanonicalizationMethodType canonicalizationMethodType;
        synchronized (monitor()) {
            check_orphaned();
            canonicalizationMethodType = (CanonicalizationMethodType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (canonicalizationMethodType == null) {
                canonicalizationMethodType = null;
            }
        }
        return canonicalizationMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public ReferenceType[] getReferenceArray() {
        return (ReferenceType[]) getXmlObjectArray(PROPERTY_QNAME[2], new ReferenceType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public List<ReferenceType> getReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yrm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedInfoTypeImpl.this.getReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zrm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignedInfoTypeImpl.this.setReferenceArray(((Integer) obj).intValue(), (ReferenceType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.asm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignedInfoTypeImpl.this.insertNewReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bsm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignedInfoTypeImpl.this.removeReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.csm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignedInfoTypeImpl.this.sizeOfReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public SignatureMethodType getSignatureMethod() {
        SignatureMethodType signatureMethodType;
        synchronized (monitor()) {
            check_orphaned();
            signatureMethodType = (SignatureMethodType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (signatureMethodType == null) {
                signatureMethodType = null;
            }
        }
        return signatureMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public ReferenceType insertNewReference(int i) {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public void removeReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public void setCanonicalizationMethod(CanonicalizationMethodType canonicalizationMethodType) {
        generatedSetterHelperImpl(canonicalizationMethodType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
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

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public void setReferenceArray(ReferenceType[] referenceTypeArr) {
        check_orphaned();
        arraySetterHelper(referenceTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public void setSignatureMethod(SignatureMethodType signatureMethodType) {
        generatedSetterHelperImpl(signatureMethodType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public int sizeOfReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlID;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
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

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public ReferenceType getReferenceArray(int i) {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (referenceType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignedInfoType
    public void setReferenceArray(int i, ReferenceType referenceType) {
        generatedSetterHelperImpl(referenceType, PROPERTY_QNAME[2], i, (short) 2);
    }
}
