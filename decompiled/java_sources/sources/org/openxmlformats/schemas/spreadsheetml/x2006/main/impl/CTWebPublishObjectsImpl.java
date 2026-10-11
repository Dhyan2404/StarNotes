package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObject;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTWebPublishObjectsImpl;

/* loaded from: classes15.dex */
public class CTWebPublishObjectsImpl extends XmlComplexContentImpl implements CTWebPublishObjects {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "webPublishObject"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTWebPublishObjectsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public CTWebPublishObject addNewWebPublishObject() {
        CTWebPublishObject cTWebPublishObject;
        synchronized (monitor()) {
            check_orphaned();
            cTWebPublishObject = (CTWebPublishObject) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWebPublishObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public CTWebPublishObject[] getWebPublishObjectArray() {
        return (CTWebPublishObject[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTWebPublishObject[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public List<CTWebPublishObject> getWebPublishObjectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWebPublishObjectsImpl.this.getWebPublishObjectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.whd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWebPublishObjectsImpl.this.setWebPublishObjectArray(((Integer) obj).intValue(), (CTWebPublishObject) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWebPublishObjectsImpl.this.insertNewWebPublishObject(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yhd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWebPublishObjectsImpl.this.removeWebPublishObject(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zhd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWebPublishObjectsImpl.this.sizeOfWebPublishObjectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public CTWebPublishObject insertNewWebPublishObject(int i) {
        CTWebPublishObject cTWebPublishObject;
        synchronized (monitor()) {
            check_orphaned();
            cTWebPublishObject = (CTWebPublishObject) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTWebPublishObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public boolean isSetCount() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public void removeWebPublishObject(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public void setWebPublishObjectArray(CTWebPublishObject[] cTWebPublishObjectArr) {
        check_orphaned();
        arraySetterHelper(cTWebPublishObjectArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public int sizeOfWebPublishObjectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public CTWebPublishObject getWebPublishObjectArray(int i) {
        CTWebPublishObject cTWebPublishObject;
        synchronized (monitor()) {
            check_orphaned();
            cTWebPublishObject = (CTWebPublishObject) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTWebPublishObject == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWebPublishObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishObjects
    public void setWebPublishObjectArray(int i, CTWebPublishObject cTWebPublishObject) {
        generatedSetterHelperImpl(cTWebPublishObject, PROPERTY_QNAME[0], i, (short) 2);
    }
}
