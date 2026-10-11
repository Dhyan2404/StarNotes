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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTItemsImpl;

/* loaded from: classes15.dex */
public class CTItemsImpl extends XmlComplexContentImpl implements CTItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "item"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public CTItem addNewItem() {
        CTItem cTItem;
        synchronized (monitor()) {
            check_orphaned();
            cTItem = (CTItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public CTItem[] getItemArray() {
        return (CTItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public List<CTItem> getItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.va5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTItemsImpl.this.getItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wa5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTItemsImpl.this.setItemArray(((Integer) obj).intValue(), (CTItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xa5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTItemsImpl.this.insertNewItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ya5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTItemsImpl.this.removeItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.za5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTItemsImpl.this.sizeOfItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public CTItem insertNewItem(int i) {
        CTItem cTItem;
        synchronized (monitor()) {
            check_orphaned();
            cTItem = (CTItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public void removeItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public void setItemArray(CTItem[] cTItemArr) {
        check_orphaned();
        arraySetterHelper(cTItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public int sizeOfItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public CTItem getItemArray(int i) {
        CTItem cTItem;
        synchronized (monitor()) {
            check_orphaned();
            cTItem = (CTItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems
    public void setItemArray(int i, CTItem cTItem) {
        generatedSetterHelperImpl(cTItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
