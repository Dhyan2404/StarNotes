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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHierarchyUsage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRowHierarchiesUsageImpl;

/* loaded from: classes15.dex */
public class CTRowHierarchiesUsageImpl extends XmlComplexContentImpl implements CTRowHierarchiesUsage {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rowHierarchyUsage"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTRowHierarchiesUsageImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public CTHierarchyUsage addNewRowHierarchyUsage() {
        CTHierarchyUsage cTHierarchyUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTHierarchyUsage = (CTHierarchyUsage) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTHierarchyUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public CTHierarchyUsage[] getRowHierarchyUsageArray() {
        return (CTHierarchyUsage[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTHierarchyUsage[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public List<CTHierarchyUsage> getRowHierarchyUsageList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h09
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRowHierarchiesUsageImpl.this.getRowHierarchyUsageArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i09
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRowHierarchiesUsageImpl.this.setRowHierarchyUsageArray(((Integer) obj).intValue(), (CTHierarchyUsage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j09
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRowHierarchiesUsageImpl.this.insertNewRowHierarchyUsage(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k09
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRowHierarchiesUsageImpl.this.removeRowHierarchyUsage(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l09
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRowHierarchiesUsageImpl.this.sizeOfRowHierarchyUsageArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public CTHierarchyUsage insertNewRowHierarchyUsage(int i) {
        CTHierarchyUsage cTHierarchyUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTHierarchyUsage = (CTHierarchyUsage) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTHierarchyUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public void removeRowHierarchyUsage(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public void setRowHierarchyUsageArray(CTHierarchyUsage[] cTHierarchyUsageArr) {
        check_orphaned();
        arraySetterHelper(cTHierarchyUsageArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public int sizeOfRowHierarchyUsageArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public CTHierarchyUsage getRowHierarchyUsageArray(int i) {
        CTHierarchyUsage cTHierarchyUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTHierarchyUsage = (CTHierarchyUsage) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTHierarchyUsage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHierarchyUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowHierarchiesUsage
    public void setRowHierarchyUsageArray(int i, CTHierarchyUsage cTHierarchyUsage) {
        generatedSetterHelperImpl(cTHierarchyUsage, PROPERTY_QNAME[0], i, (short) 2);
    }
}
