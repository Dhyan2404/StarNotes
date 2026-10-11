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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPCDSCPageImpl;

/* loaded from: classes15.dex */
public class CTPCDSCPageImpl extends XmlComplexContentImpl implements CTPCDSCPage {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pageItem"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPCDSCPageImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public CTPageItem addNewPageItem() {
        CTPageItem cTPageItem;
        synchronized (monitor()) {
            check_orphaned();
            cTPageItem = (CTPageItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPageItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public CTPageItem[] getPageItemArray() {
        return (CTPageItem[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPageItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public List<CTPageItem> getPageItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yg6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSCPageImpl.this.getPageItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zg6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPCDSCPageImpl.this.setPageItemArray(((Integer) obj).intValue(), (CTPageItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ah6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPCDSCPageImpl.this.insertNewPageItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bh6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPCDSCPageImpl.this.removePageItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ch6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPCDSCPageImpl.this.sizeOfPageItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public CTPageItem insertNewPageItem(int i) {
        CTPageItem cTPageItem;
        synchronized (monitor()) {
            check_orphaned();
            cTPageItem = (CTPageItem) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPageItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public void removePageItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public void setPageItemArray(CTPageItem[] cTPageItemArr) {
        check_orphaned();
        arraySetterHelper(cTPageItemArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public int sizeOfPageItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public CTPageItem getPageItemArray(int i) {
        CTPageItem cTPageItem;
        synchronized (monitor()) {
            check_orphaned();
            cTPageItem = (CTPageItem) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPageItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPageItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSCPage
    public void setPageItemArray(int i, CTPageItem cTPageItem) {
        generatedSetterHelperImpl(cTPageItem, PROPERTY_QNAME[0], i, (short) 2);
    }
}
