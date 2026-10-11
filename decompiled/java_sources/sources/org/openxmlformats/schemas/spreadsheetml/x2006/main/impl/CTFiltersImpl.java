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
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCalendarType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDateGroupItem;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTFiltersImpl;

/* loaded from: classes15.dex */
public class CTFiltersImpl extends XmlComplexContentImpl implements CTFilters {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "filter"), new QName(XSSFRelation.NS_SPREADSHEETML, "dateGroupItem"), new QName("", "blank"), new QName("", "calendarType")};
    private static final long serialVersionUID = 1;

    public CTFiltersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTDateGroupItem addNewDateGroupItem() {
        CTDateGroupItem cTDateGroupItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDateGroupItem = (CTDateGroupItem) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDateGroupItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTFilter addNewFilter() {
        CTFilter cTFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTFilter = (CTFilter) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public boolean getBlank() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public STCalendarType.Enum getCalendarType() {
        STCalendarType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            r5 = simpleValue == null ? null : (STCalendarType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTDateGroupItem[] getDateGroupItemArray() {
        return (CTDateGroupItem[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTDateGroupItem[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public List<CTDateGroupItem> getDateGroupItemList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFiltersImpl.this.getDateGroupItemArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hw3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFiltersImpl.this.setDateGroupItemArray(((Integer) obj).intValue(), (CTDateGroupItem) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.iw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFiltersImpl.this.insertNewDateGroupItem(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jw3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFiltersImpl.this.removeDateGroupItem(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kw3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFiltersImpl.this.sizeOfDateGroupItemArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTFilter[] getFilterArray() {
        return (CTFilter[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFilter[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public List<CTFilter> getFilterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFiltersImpl.this.getFilterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mw3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFiltersImpl.this.setFilterArray(((Integer) obj).intValue(), (CTFilter) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFiltersImpl.this.insertNewFilter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ow3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFiltersImpl.this.removeFilter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pw3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFiltersImpl.this.sizeOfFilterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTDateGroupItem insertNewDateGroupItem(int i) {
        CTDateGroupItem cTDateGroupItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDateGroupItem = (CTDateGroupItem) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTDateGroupItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTFilter insertNewFilter(int i) {
        CTFilter cTFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTFilter = (CTFilter) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public boolean isSetBlank() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public boolean isSetCalendarType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void removeDateGroupItem(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void removeFilter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void setBlank(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void setCalendarType(STCalendarType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void setDateGroupItemArray(CTDateGroupItem[] cTDateGroupItemArr) {
        check_orphaned();
        arraySetterHelper(cTDateGroupItemArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void setFilterArray(CTFilter[] cTFilterArr) {
        check_orphaned();
        arraySetterHelper(cTFilterArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public int sizeOfDateGroupItemArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public int sizeOfFilterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void unsetBlank() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void unsetCalendarType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public XmlBoolean xgetBlank() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public STCalendarType xgetCalendarType() {
        STCalendarType sTCalendarType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTCalendarType = (STCalendarType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTCalendarType == null) {
                sTCalendarType = (STCalendarType) get_default_attribute_value(qNameArr[3]);
            }
        }
        return sTCalendarType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void xsetBlank(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void xsetCalendarType(STCalendarType sTCalendarType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCalendarType sTCalendarType2 = (STCalendarType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTCalendarType2 == null) {
                sTCalendarType2 = (STCalendarType) get_store().add_attribute_user(qNameArr[3]);
            }
            sTCalendarType2.set(sTCalendarType);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTDateGroupItem getDateGroupItemArray(int i) {
        CTDateGroupItem cTDateGroupItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDateGroupItem = (CTDateGroupItem) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTDateGroupItem == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDateGroupItem;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public CTFilter getFilterArray(int i) {
        CTFilter cTFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTFilter = (CTFilter) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFilter == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void setDateGroupItemArray(int i, CTDateGroupItem cTDateGroupItem) {
        generatedSetterHelperImpl(cTDateGroupItem, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilters
    public void setFilterArray(int i, CTFilter cTFilter) {
        generatedSetterHelperImpl(cTFilter, PROPERTY_QNAME[0], i, (short) 2);
    }
}
