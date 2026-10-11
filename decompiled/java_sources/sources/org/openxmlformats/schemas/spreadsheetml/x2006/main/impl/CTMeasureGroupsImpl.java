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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroup;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMeasureGroupsImpl;

/* loaded from: classes15.dex */
public class CTMeasureGroupsImpl extends XmlComplexContentImpl implements CTMeasureGroups {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "measureGroup"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMeasureGroupsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public CTMeasureGroup addNewMeasureGroup() {
        CTMeasureGroup cTMeasureGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTMeasureGroup = (CTMeasureGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMeasureGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public CTMeasureGroup[] getMeasureGroupArray() {
        return (CTMeasureGroup[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMeasureGroup[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public List<CTMeasureGroup> getMeasureGroupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pl5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMeasureGroupsImpl.this.getMeasureGroupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ql5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMeasureGroupsImpl.this.setMeasureGroupArray(((Integer) obj).intValue(), (CTMeasureGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rl5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMeasureGroupsImpl.this.insertNewMeasureGroup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sl5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMeasureGroupsImpl.this.removeMeasureGroup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tl5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMeasureGroupsImpl.this.sizeOfMeasureGroupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public CTMeasureGroup insertNewMeasureGroup(int i) {
        CTMeasureGroup cTMeasureGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTMeasureGroup = (CTMeasureGroup) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMeasureGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public void removeMeasureGroup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public void setMeasureGroupArray(CTMeasureGroup[] cTMeasureGroupArr) {
        check_orphaned();
        arraySetterHelper(cTMeasureGroupArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public int sizeOfMeasureGroupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public CTMeasureGroup getMeasureGroupArray(int i) {
        CTMeasureGroup cTMeasureGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTMeasureGroup = (CTMeasureGroup) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMeasureGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMeasureGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMeasureGroups
    public void setMeasureGroupArray(int i, CTMeasureGroup cTMeasureGroup) {
        generatedSetterHelperImpl(cTMeasureGroup, PROPERTY_QNAME[0], i, (short) 2);
    }
}
