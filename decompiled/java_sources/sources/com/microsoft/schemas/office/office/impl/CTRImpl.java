package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTProxy;
import com.microsoft.schemas.office.office.CTR;
import com.microsoft.schemas.office.office.STHow;
import com.microsoft.schemas.office.office.STRType;
import com.microsoft.schemas.office.office.impl.CTRImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTRImpl extends XmlComplexContentImpl implements CTR {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "proxy"), new QName("", "id"), new QName("", "type"), new QName("", "how"), new QName("", "idref")};
    private static final long serialVersionUID = 1;

    public CTRImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public CTProxy addNewProxy() {
        CTProxy cTProxy;
        synchronized (monitor()) {
            check_orphaned();
            cTProxy = (CTProxy) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTProxy;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public STHow.Enum getHow() {
        STHow.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            r3 = simpleValue == null ? null : (STHow.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public String getIdref() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public CTProxy[] getProxyArray() {
        return (CTProxy[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTProxy[0]);
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public List<CTProxy> getProxyList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.getProxyArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sv7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRImpl.this.setProxyArray(((Integer) obj).intValue(), (CTProxy) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pw7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRImpl.this.insertNewProxy(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mx7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRImpl.this.removeProxy(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jy7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRImpl.this.sizeOfProxyArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public STRType.Enum getType() {
        STRType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STRType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public CTProxy insertNewProxy(int i) {
        CTProxy cTProxy;
        synchronized (monitor()) {
            check_orphaned();
            cTProxy = (CTProxy) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTProxy;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public boolean isSetHow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public boolean isSetIdref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void removeProxy(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void setHow(STHow.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
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

    @Override // com.microsoft.schemas.office.office.CTR
    public void setIdref(String str) {
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

    @Override // com.microsoft.schemas.office.office.CTR
    public void setProxyArray(CTProxy[] cTProxyArr) {
        check_orphaned();
        arraySetterHelper(cTProxyArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void setType(STRType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public int sizeOfProxyArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void unsetHow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void unsetIdref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public STHow xgetHow() {
        STHow sTHow;
        synchronized (monitor()) {
            check_orphaned();
            sTHow = (STHow) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTHow;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public XmlString xgetId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public XmlString xgetIdref() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public STRType xgetType() {
        STRType sTRType;
        synchronized (monitor()) {
            check_orphaned();
            sTRType = (STRType) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTRType;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void xsetHow(STHow sTHow) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHow sTHow2 = (STHow) typeStore.find_attribute_user(qNameArr[3]);
            if (sTHow2 == null) {
                sTHow2 = (STHow) get_store().add_attribute_user(qNameArr[3]);
            }
            sTHow2.set(sTHow);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void xsetId(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void xsetIdref(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void xsetType(STRType sTRType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRType sTRType2 = (STRType) typeStore.find_attribute_user(qNameArr[2]);
            if (sTRType2 == null) {
                sTRType2 = (STRType) get_store().add_attribute_user(qNameArr[2]);
            }
            sTRType2.set(sTRType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public CTProxy getProxyArray(int i) {
        CTProxy cTProxy;
        synchronized (monitor()) {
            check_orphaned();
            cTProxy = (CTProxy) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTProxy == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProxy;
    }

    @Override // com.microsoft.schemas.office.office.CTR
    public void setProxyArray(int i, CTProxy cTProxy) {
        generatedSetterHelperImpl(cTProxy, PROPERTY_QNAME[0], i, (short) 2);
    }
}
