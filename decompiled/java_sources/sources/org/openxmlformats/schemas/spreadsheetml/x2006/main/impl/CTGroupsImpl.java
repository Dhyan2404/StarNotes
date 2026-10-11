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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTLevelGroup;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTGroupsImpl;

/* loaded from: classes15.dex */
public class CTGroupsImpl extends XmlComplexContentImpl implements CTGroups {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "group"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTGroupsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public CTLevelGroup addNewGroup() {
        CTLevelGroup cTLevelGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTLevelGroup = (CTLevelGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLevelGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public CTLevelGroup[] getGroupArray() {
        return (CTLevelGroup[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTLevelGroup[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public List<CTLevelGroup> getGroupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ll4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupsImpl.this.getGroupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ml4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupsImpl.this.setGroupArray(((Integer) obj).intValue(), (CTLevelGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nl4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupsImpl.this.insertNewGroup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ol4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupsImpl.this.removeGroup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pl4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupsImpl.this.sizeOfGroupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public CTLevelGroup insertNewGroup(int i) {
        CTLevelGroup cTLevelGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTLevelGroup = (CTLevelGroup) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTLevelGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public void removeGroup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public void setGroupArray(CTLevelGroup[] cTLevelGroupArr) {
        check_orphaned();
        arraySetterHelper(cTLevelGroupArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public int sizeOfGroupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public CTLevelGroup getGroupArray(int i) {
        CTLevelGroup cTLevelGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTLevelGroup = (CTLevelGroup) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTLevelGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLevelGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroups
    public void setGroupArray(int i, CTLevelGroup cTLevelGroup) {
        generatedSetterHelperImpl(cTLevelGroup, PROPERTY_QNAME[0], i, (short) 2);
    }
}
