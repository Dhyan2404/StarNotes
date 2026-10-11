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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTQueryTableFieldsImpl;

/* loaded from: classes15.dex */
public class CTQueryTableFieldsImpl extends XmlComplexContentImpl implements CTQueryTableFields {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "queryTableField"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTQueryTableFieldsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public CTQueryTableField addNewQueryTableField() {
        CTQueryTableField cTQueryTableField;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryTableField = (CTQueryTableField) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTQueryTableField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public CTQueryTableField[] getQueryTableFieldArray() {
        return (CTQueryTableField[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTQueryTableField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public List<CTQueryTableField> getQueryTableFieldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTQueryTableFieldsImpl.this.getQueryTableFieldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kp7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTQueryTableFieldsImpl.this.setQueryTableFieldArray(((Integer) obj).intValue(), (CTQueryTableField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTQueryTableFieldsImpl.this.insertNewQueryTableField(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mp7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTQueryTableFieldsImpl.this.removeQueryTableField(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.np7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTQueryTableFieldsImpl.this.sizeOfQueryTableFieldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public CTQueryTableField insertNewQueryTableField(int i) {
        CTQueryTableField cTQueryTableField;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryTableField = (CTQueryTableField) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTQueryTableField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public void removeQueryTableField(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public void setQueryTableFieldArray(CTQueryTableField[] cTQueryTableFieldArr) {
        check_orphaned();
        arraySetterHelper(cTQueryTableFieldArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public int sizeOfQueryTableFieldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public CTQueryTableField getQueryTableFieldArray(int i) {
        CTQueryTableField cTQueryTableField;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryTableField = (CTQueryTableField) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTQueryTableField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTQueryTableField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableFields
    public void setQueryTableFieldArray(int i, CTQueryTableField cTQueryTableField) {
        generatedSetterHelperImpl(cTQueryTableField, PROPERTY_QNAME[0], i, (short) 2);
    }
}
