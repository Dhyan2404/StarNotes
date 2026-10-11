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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHierarchyUsage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTColHierarchiesUsageImpl;

/* loaded from: classes15.dex */
public class CTColHierarchiesUsageImpl extends XmlComplexContentImpl implements CTColHierarchiesUsage {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "colHierarchyUsage"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTColHierarchiesUsageImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public CTHierarchyUsage addNewColHierarchyUsage() {
        CTHierarchyUsage cTHierarchyUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTHierarchyUsage = (CTHierarchyUsage) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTHierarchyUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public CTHierarchyUsage[] getColHierarchyUsageArray() {
        return (CTHierarchyUsage[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTHierarchyUsage[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public List<CTHierarchyUsage> getColHierarchyUsageList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ly1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColHierarchiesUsageImpl.this.getColHierarchyUsageArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.my1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColHierarchiesUsageImpl.this.setColHierarchyUsageArray(((Integer) obj).intValue(), (CTHierarchyUsage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ny1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColHierarchiesUsageImpl.this.insertNewColHierarchyUsage(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oy1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColHierarchiesUsageImpl.this.removeColHierarchyUsage(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.py1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColHierarchiesUsageImpl.this.sizeOfColHierarchyUsageArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public CTHierarchyUsage insertNewColHierarchyUsage(int i) {
        CTHierarchyUsage cTHierarchyUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTHierarchyUsage = (CTHierarchyUsage) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTHierarchyUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public void removeColHierarchyUsage(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public void setColHierarchyUsageArray(CTHierarchyUsage[] cTHierarchyUsageArr) {
        check_orphaned();
        arraySetterHelper(cTHierarchyUsageArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public int sizeOfColHierarchyUsageArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public CTHierarchyUsage getColHierarchyUsageArray(int i) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColHierarchiesUsage
    public void setColHierarchyUsageArray(int i, CTHierarchyUsage cTHierarchyUsage) {
        generatedSetterHelperImpl(cTHierarchyUsage, PROPERTY_QNAME[0], i, (short) 2);
    }
}
