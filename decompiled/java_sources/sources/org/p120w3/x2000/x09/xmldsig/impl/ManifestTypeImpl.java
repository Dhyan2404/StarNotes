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
import org.p120w3.x2000.x09.xmldsig.ManifestType;
import org.p120w3.x2000.x09.xmldsig.ReferenceType;
import org.p120w3.x2000.x09.xmldsig.impl.ManifestTypeImpl;

/* loaded from: classes16.dex */
public class ManifestTypeImpl extends XmlComplexContentImpl implements ManifestType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Reference"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public ManifestTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public ReferenceType addNewReference() {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public ReferenceType[] getReferenceArray() {
        return (ReferenceType[]) getXmlObjectArray(PROPERTY_QNAME[0], new ReferenceType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public List<ReferenceType> getReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f8j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ManifestTypeImpl.this.getReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g8j
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ManifestTypeImpl.this.setReferenceArray(((Integer) obj).intValue(), (ReferenceType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h8j
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ManifestTypeImpl.this.insertNewReference(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i8j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ManifestTypeImpl.this.removeReference(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j8j
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ManifestTypeImpl.this.sizeOfReferenceArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public ReferenceType insertNewReference(int i) {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
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

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public void removeReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
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

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public void setReferenceArray(ReferenceType[] referenceTypeArr) {
        check_orphaned();
        arraySetterHelper(referenceTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public int sizeOfReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlID;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
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

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public ReferenceType getReferenceArray(int i) {
        ReferenceType referenceType;
        synchronized (monitor()) {
            check_orphaned();
            referenceType = (ReferenceType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (referenceType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return referenceType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.ManifestType
    public void setReferenceArray(int i, ReferenceType referenceType) {
        generatedSetterHelperImpl(referenceType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
