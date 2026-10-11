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
import org.p120w3.x2000.x09.xmldsig.KeyInfoType;
import org.p120w3.x2000.x09.xmldsig.ObjectType;
import org.p120w3.x2000.x09.xmldsig.SignatureType;
import org.p120w3.x2000.x09.xmldsig.SignatureValueType;
import org.p120w3.x2000.x09.xmldsig.SignedInfoType;
import org.p120w3.x2000.x09.xmldsig.impl.SignatureTypeImpl;

/* loaded from: classes16.dex */
public class SignatureTypeImpl extends XmlComplexContentImpl implements SignatureType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignedInfo"), new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureValue"), new QName(SignatureFacet.XML_DIGSIG_NS, "KeyInfo"), new QName(SignatureFacet.XML_DIGSIG_NS, "Object"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public SignatureTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public KeyInfoType addNewKeyInfo() {
        KeyInfoType keyInfoType;
        synchronized (monitor()) {
            check_orphaned();
            keyInfoType = (KeyInfoType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return keyInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public ObjectType addNewObject() {
        ObjectType objectType;
        synchronized (monitor()) {
            check_orphaned();
            objectType = (ObjectType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return objectType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public SignatureValueType addNewSignatureValue() {
        SignatureValueType signatureValueType;
        synchronized (monitor()) {
            check_orphaned();
            signatureValueType = (SignatureValueType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return signatureValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public SignedInfoType addNewSignedInfo() {
        SignedInfoType signedInfoType;
        synchronized (monitor()) {
            check_orphaned();
            signedInfoType = (SignedInfoType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signedInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public KeyInfoType getKeyInfo() {
        KeyInfoType keyInfoType;
        synchronized (monitor()) {
            check_orphaned();
            keyInfoType = (KeyInfoType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (keyInfoType == null) {
                keyInfoType = null;
            }
        }
        return keyInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public ObjectType[] getObjectArray() {
        return (ObjectType[]) getXmlObjectArray(PROPERTY_QNAME[3], new ObjectType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public List<ObjectType> getObjectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zqm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignatureTypeImpl.this.getObjectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.arm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignatureTypeImpl.this.setObjectArray(((Integer) obj).intValue(), (ObjectType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.brm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignatureTypeImpl.this.insertNewObject(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.crm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignatureTypeImpl.this.removeObject(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.drm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignatureTypeImpl.this.sizeOfObjectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public SignatureValueType getSignatureValue() {
        SignatureValueType signatureValueType;
        synchronized (monitor()) {
            check_orphaned();
            signatureValueType = (SignatureValueType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (signatureValueType == null) {
                signatureValueType = null;
            }
        }
        return signatureValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public SignedInfoType getSignedInfo() {
        SignedInfoType signedInfoType;
        synchronized (monitor()) {
            check_orphaned();
            signedInfoType = (SignedInfoType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signedInfoType == null) {
                signedInfoType = null;
            }
        }
        return signedInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public ObjectType insertNewObject(int i) {
        ObjectType objectType;
        synchronized (monitor()) {
            check_orphaned();
            objectType = (ObjectType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return objectType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public boolean isSetKeyInfo() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void removeObject(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void setId(String str) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void setKeyInfo(KeyInfoType keyInfoType) {
        generatedSetterHelperImpl(keyInfoType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void setObjectArray(ObjectType[] objectTypeArr) {
        check_orphaned();
        arraySetterHelper(objectTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void setSignatureValue(SignatureValueType signatureValueType) {
        generatedSetterHelperImpl(signatureValueType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void setSignedInfo(SignedInfoType signedInfoType) {
        generatedSetterHelperImpl(signedInfoType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public int sizeOfObjectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void unsetKeyInfo() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlID;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public ObjectType getObjectArray(int i) {
        ObjectType objectType;
        synchronized (monitor()) {
            check_orphaned();
            objectType = (ObjectType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (objectType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return objectType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignatureType
    public void setObjectArray(int i, ObjectType objectType) {
        generatedSetterHelperImpl(objectType, PROPERTY_QNAME[3], i, (short) 2);
    }
}
