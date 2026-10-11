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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPivotFiltersImpl;

/* loaded from: classes15.dex */
public class CTPivotFiltersImpl extends XmlComplexContentImpl implements CTPivotFilters {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "filter"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPivotFiltersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public CTPivotFilter addNewFilter() {
        CTPivotFilter cTPivotFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotFilter = (CTPivotFilter) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public CTPivotFilter[] getFilterArray() {
        return (CTPivotFilter[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotFilter[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public List<CTPivotFilter> getFilterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotFiltersImpl.this.getFilterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g97
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPivotFiltersImpl.this.setFilterArray(((Integer) obj).intValue(), (CTPivotFilter) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotFiltersImpl.this.insertNewFilter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i97
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPivotFiltersImpl.this.removeFilter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j97
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPivotFiltersImpl.this.sizeOfFilterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public CTPivotFilter insertNewFilter(int i) {
        CTPivotFilter cTPivotFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotFilter = (CTPivotFilter) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public void removeFilter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public void setFilterArray(CTPivotFilter[] cTPivotFilterArr) {
        check_orphaned();
        arraySetterHelper(cTPivotFilterArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public int sizeOfFilterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public CTPivotFilter getFilterArray(int i) {
        CTPivotFilter cTPivotFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotFilter = (CTPivotFilter) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotFilter == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFilters
    public void setFilterArray(int i, CTPivotFilter cTPivotFilter) {
        generatedSetterHelperImpl(cTPivotFilter, PROPERTY_QNAME[0], i, (short) 2);
    }
}
