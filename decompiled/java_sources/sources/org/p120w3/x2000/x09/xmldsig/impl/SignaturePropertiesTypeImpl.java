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
import org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType;
import org.p120w3.x2000.x09.xmldsig.SignaturePropertyType;
import org.p120w3.x2000.x09.xmldsig.impl.SignaturePropertiesTypeImpl;

/* loaded from: classes16.dex */
public class SignaturePropertiesTypeImpl extends XmlComplexContentImpl implements SignaturePropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SignatureProperty"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public SignaturePropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public SignaturePropertyType addNewSignatureProperty() {
        SignaturePropertyType signaturePropertyType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertyType = (SignaturePropertyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signaturePropertyType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public SignaturePropertyType[] getSignaturePropertyArray() {
        return (SignaturePropertyType[]) getXmlObjectArray(PROPERTY_QNAME[0], new SignaturePropertyType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public List<SignaturePropertyType> getSignaturePropertyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uqm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignaturePropertiesTypeImpl.this.getSignaturePropertyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vqm
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SignaturePropertiesTypeImpl.this.setSignaturePropertyArray(((Integer) obj).intValue(), (SignaturePropertyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wqm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SignaturePropertiesTypeImpl.this.insertNewSignatureProperty(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xqm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SignaturePropertiesTypeImpl.this.removeSignatureProperty(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yqm
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SignaturePropertiesTypeImpl.this.sizeOfSignaturePropertyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public SignaturePropertyType insertNewSignatureProperty(int i) {
        SignaturePropertyType signaturePropertyType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertyType = (SignaturePropertyType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return signaturePropertyType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public void removeSignatureProperty(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public void setId(String str) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public void setSignaturePropertyArray(SignaturePropertyType[] signaturePropertyTypeArr) {
        check_orphaned();
        arraySetterHelper(signaturePropertyTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public int sizeOfSignaturePropertyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlID;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public SignaturePropertyType getSignaturePropertyArray(int i) {
        SignaturePropertyType signaturePropertyType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePropertyType = (SignaturePropertyType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (signaturePropertyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return signaturePropertyType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SignaturePropertiesType
    public void setSignaturePropertyArray(int i, SignaturePropertyType signaturePropertyType) {
        generatedSetterHelperImpl(signaturePropertyType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
