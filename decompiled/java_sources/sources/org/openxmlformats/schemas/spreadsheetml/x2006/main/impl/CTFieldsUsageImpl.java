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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldUsage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTFieldsUsageImpl;

/* loaded from: classes15.dex */
public class CTFieldsUsageImpl extends XmlComplexContentImpl implements CTFieldsUsage {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "fieldUsage"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTFieldsUsageImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public CTFieldUsage addNewFieldUsage() {
        CTFieldUsage cTFieldUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTFieldUsage = (CTFieldUsage) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFieldUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public CTFieldUsage[] getFieldUsageArray() {
        return (CTFieldUsage[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFieldUsage[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public List<CTFieldUsage> getFieldUsageList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.su3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFieldsUsageImpl.this.getFieldUsageArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tu3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFieldsUsageImpl.this.setFieldUsageArray(((Integer) obj).intValue(), (CTFieldUsage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uu3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFieldsUsageImpl.this.insertNewFieldUsage(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vu3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFieldsUsageImpl.this.removeFieldUsage(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wu3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFieldsUsageImpl.this.sizeOfFieldUsageArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public CTFieldUsage insertNewFieldUsage(int i) {
        CTFieldUsage cTFieldUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTFieldUsage = (CTFieldUsage) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFieldUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public void removeFieldUsage(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public void setFieldUsageArray(CTFieldUsage[] cTFieldUsageArr) {
        check_orphaned();
        arraySetterHelper(cTFieldUsageArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public int sizeOfFieldUsageArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public CTFieldUsage getFieldUsageArray(int i) {
        CTFieldUsage cTFieldUsage;
        synchronized (monitor()) {
            check_orphaned();
            cTFieldUsage = (CTFieldUsage) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFieldUsage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFieldUsage;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFieldsUsage
    public void setFieldUsageArray(int i, CTFieldUsage cTFieldUsage) {
        generatedSetterHelperImpl(cTFieldUsage, PROPERTY_QNAME[0], i, (short) 2);
    }
}
