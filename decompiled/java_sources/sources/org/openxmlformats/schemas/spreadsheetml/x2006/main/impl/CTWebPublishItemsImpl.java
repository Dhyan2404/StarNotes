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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTWebPublishItemsImpl;

/* loaded from: classes15.dex */
public class CTWebPublishItemsImpl extends XmlComplexContentImpl implements CTWebPublishItems {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "webPublishItem"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTWebPublishItemsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public CTWebPublishItem addNewWebPublishItem() {
        CTWebPublishItem cTWebPublishItem;
        synchronized (monitor()) {
            check_orphaned();
            cTWebPublishItem = (CTWebPublishItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWebPublishItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public CTWebPublishItem[] getWebPublishItemArray() {
        return (CTWebPublishItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTWebPublishItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public List<CTWebPublishItem> getWebPublishItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWebPublishItemsImpl.this.getWebPublishItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rhd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWebPublishItemsImpl.this.setWebPublishItemArray(((Integer) obj).intValue(), (CTWebPublishItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.shd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWebPublishItemsImpl.this.insertNewWebPublishItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.thd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWebPublishItemsImpl.this.removeWebPublishItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uhd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWebPublishItemsImpl.this.sizeOfWebPublishItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public CTWebPublishItem insertNewWebPublishItem(int i) {
        CTWebPublishItem cTWebPublishItem;
        synchronized (monitor()) {
            check_orphaned();
            cTWebPublishItem = (CTWebPublishItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTWebPublishItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public void removeWebPublishItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public void setWebPublishItemArray(CTWebPublishItem[] cTWebPublishItemArr) {
        check_orphaned();
        arraySetterHelper(cTWebPublishItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public int sizeOfWebPublishItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public CTWebPublishItem getWebPublishItemArray(int i) {
        CTWebPublishItem cTWebPublishItem;
        synchronized (monitor()) {
            check_orphaned();
            cTWebPublishItem = (CTWebPublishItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTWebPublishItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWebPublishItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWebPublishItems
    public void setWebPublishItemArray(int i, CTWebPublishItem cTWebPublishItem) {
        generatedSetterHelperImpl(cTWebPublishItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
