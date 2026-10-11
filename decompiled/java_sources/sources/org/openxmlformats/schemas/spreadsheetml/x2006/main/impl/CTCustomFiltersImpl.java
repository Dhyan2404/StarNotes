package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.onyx.android.sdk.base.data.Operators;
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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCustomFiltersImpl;

/* loaded from: classes15.dex */
public class CTCustomFiltersImpl extends XmlComplexContentImpl implements CTCustomFilters {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "customFilter"), new QName("", Operators.AND)};
    private static final long serialVersionUID = 1;

    public CTCustomFiltersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public CTCustomFilter addNewCustomFilter() {
        CTCustomFilter cTCustomFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomFilter = (CTCustomFilter) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCustomFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public boolean getAnd() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public CTCustomFilter[] getCustomFilterArray() {
        return (CTCustomFilter[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCustomFilter[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public List<CTCustomFilter> getCustomFilterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ng2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomFiltersImpl.this.getCustomFilterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.og2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCustomFiltersImpl.this.setCustomFilterArray(((Integer) obj).intValue(), (CTCustomFilter) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pg2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCustomFiltersImpl.this.insertNewCustomFilter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qg2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCustomFiltersImpl.this.removeCustomFilter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rg2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCustomFiltersImpl.this.sizeOfCustomFilterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public CTCustomFilter insertNewCustomFilter(int i) {
        CTCustomFilter cTCustomFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomFilter = (CTCustomFilter) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCustomFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public boolean isSetAnd() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public void removeCustomFilter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public void setAnd(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public void setCustomFilterArray(CTCustomFilter[] cTCustomFilterArr) {
        check_orphaned();
        arraySetterHelper(cTCustomFilterArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public int sizeOfCustomFilterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public void unsetAnd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public XmlBoolean xgetAnd() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public void xsetAnd(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public CTCustomFilter getCustomFilterArray(int i) {
        CTCustomFilter cTCustomFilter;
        synchronized (monitor()) {
            check_orphaned();
            cTCustomFilter = (CTCustomFilter) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCustomFilter == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCustomFilter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCustomFilters
    public void setCustomFilterArray(int i, CTCustomFilter cTCustomFilter) {
        generatedSetterHelperImpl(cTCustomFilter, PROPERTY_QNAME[0], i, (short) 2);
    }
}
