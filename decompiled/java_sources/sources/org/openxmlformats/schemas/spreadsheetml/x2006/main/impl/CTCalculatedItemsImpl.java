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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCalculatedItemsImpl;

/* loaded from: classes15.dex */
public class CTCalculatedItemsImpl extends XmlComplexContentImpl implements CTCalculatedItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "calculatedItem"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTCalculatedItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public CTCalculatedItem addNewCalculatedItem() {
        CTCalculatedItem cTCalculatedItem;
        synchronized (monitor()) {
            check_orphaned();
            cTCalculatedItem = (CTCalculatedItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCalculatedItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public CTCalculatedItem[] getCalculatedItemArray() {
        return (CTCalculatedItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCalculatedItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public List<CTCalculatedItem> getCalculatedItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCalculatedItemsImpl.this.getCalculatedItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m51
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCalculatedItemsImpl.this.setCalculatedItemArray(((Integer) obj).intValue(), (CTCalculatedItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCalculatedItemsImpl.this.insertNewCalculatedItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o51
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCalculatedItemsImpl.this.removeCalculatedItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p51
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCalculatedItemsImpl.this.sizeOfCalculatedItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public CTCalculatedItem insertNewCalculatedItem(int i) {
        CTCalculatedItem cTCalculatedItem;
        synchronized (monitor()) {
            check_orphaned();
            cTCalculatedItem = (CTCalculatedItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCalculatedItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public void removeCalculatedItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public void setCalculatedItemArray(CTCalculatedItem[] cTCalculatedItemArr) {
        check_orphaned();
        arraySetterHelper(cTCalculatedItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public int sizeOfCalculatedItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public CTCalculatedItem getCalculatedItemArray(int i) {
        CTCalculatedItem cTCalculatedItem;
        synchronized (monitor()) {
            check_orphaned();
            cTCalculatedItem = (CTCalculatedItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCalculatedItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCalculatedItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedItems
    public void setCalculatedItemArray(int i, CTCalculatedItem cTCalculatedItem) {
        generatedSetterHelperImpl(cTCalculatedItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
