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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroup;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTFunctionGroupsImpl;

/* loaded from: classes15.dex */
public class CTFunctionGroupsImpl extends XmlComplexContentImpl implements CTFunctionGroups {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "functionGroup"), new QName("", "builtInGroupCount")};
    private static final long serialVersionUID = 1;

    public CTFunctionGroupsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public CTFunctionGroup addNewFunctionGroup() {
        CTFunctionGroup cTFunctionGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTFunctionGroup = (CTFunctionGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFunctionGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public long getBuiltInGroupCount() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public CTFunctionGroup[] getFunctionGroupArray() {
        return (CTFunctionGroup[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFunctionGroup[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public List<CTFunctionGroup> getFunctionGroupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFunctionGroupsImpl.this.getFunctionGroupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u84
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFunctionGroupsImpl.this.setFunctionGroupArray(((Integer) obj).intValue(), (CTFunctionGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v84
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFunctionGroupsImpl.this.insertNewFunctionGroup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w84
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFunctionGroupsImpl.this.removeFunctionGroup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x84
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFunctionGroupsImpl.this.sizeOfFunctionGroupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public CTFunctionGroup insertNewFunctionGroup(int i) {
        CTFunctionGroup cTFunctionGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTFunctionGroup = (CTFunctionGroup) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFunctionGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public boolean isSetBuiltInGroupCount() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public void removeFunctionGroup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public void setBuiltInGroupCount(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public void setFunctionGroupArray(CTFunctionGroup[] cTFunctionGroupArr) {
        check_orphaned();
        arraySetterHelper(cTFunctionGroupArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public int sizeOfFunctionGroupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public void unsetBuiltInGroupCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public XmlUnsignedInt xgetBuiltInGroupCount() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public void xsetBuiltInGroupCount(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public CTFunctionGroup getFunctionGroupArray(int i) {
        CTFunctionGroup cTFunctionGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTFunctionGroup = (CTFunctionGroup) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFunctionGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFunctionGroup;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFunctionGroups
    public void setFunctionGroupArray(int i, CTFunctionGroup cTFunctionGroup) {
        generatedSetterHelperImpl(cTFunctionGroup, PROPERTY_QNAME[0], i, (short) 2);
    }
}
