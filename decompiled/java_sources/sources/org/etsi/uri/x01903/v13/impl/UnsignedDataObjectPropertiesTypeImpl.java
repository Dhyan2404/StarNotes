package org.etsi.uri.x01903.v13.impl;

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
import org.etsi.uri.x01903.v13.AnyType;
import org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType;
import org.etsi.uri.x01903.v13.impl.UnsignedDataObjectPropertiesTypeImpl;

/* loaded from: classes13.dex */
public class UnsignedDataObjectPropertiesTypeImpl extends XmlComplexContentImpl implements UnsignedDataObjectPropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "UnsignedDataObjectProperty"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public UnsignedDataObjectPropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public AnyType addNewUnsignedDataObjectProperty() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public AnyType[] getUnsignedDataObjectPropertyArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[0], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public List<AnyType> getUnsignedDataObjectPropertyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedDataObjectPropertiesTypeImpl.this.getUnsignedDataObjectPropertyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gun
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    UnsignedDataObjectPropertiesTypeImpl.this.setUnsignedDataObjectPropertyArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hun
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return UnsignedDataObjectPropertiesTypeImpl.this.insertNewUnsignedDataObjectProperty(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iun
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UnsignedDataObjectPropertiesTypeImpl.this.removeUnsignedDataObjectProperty(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jun
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(UnsignedDataObjectPropertiesTypeImpl.this.sizeOfUnsignedDataObjectPropertyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public AnyType insertNewUnsignedDataObjectProperty(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
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

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public void removeUnsignedDataObjectProperty(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
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

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public void setUnsignedDataObjectPropertyArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public int sizeOfUnsignedDataObjectPropertyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
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

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public AnyType getUnsignedDataObjectPropertyArray(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (anyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType
    public void setUnsignedDataObjectPropertyArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
