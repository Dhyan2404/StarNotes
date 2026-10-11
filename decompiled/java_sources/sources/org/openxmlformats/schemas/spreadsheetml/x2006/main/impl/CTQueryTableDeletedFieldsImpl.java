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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDeletedField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTQueryTableDeletedFieldsImpl;

/* loaded from: classes15.dex */
public class CTQueryTableDeletedFieldsImpl extends XmlComplexContentImpl implements CTQueryTableDeletedFields {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "deletedField"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTQueryTableDeletedFieldsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public CTDeletedField addNewDeletedField() {
        CTDeletedField cTDeletedField;
        synchronized (monitor()) {
            check_orphaned();
            cTDeletedField = (CTDeletedField) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDeletedField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public CTDeletedField[] getDeletedFieldArray() {
        return (CTDeletedField[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDeletedField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public List<CTDeletedField> getDeletedFieldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ep7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTQueryTableDeletedFieldsImpl.this.getDeletedFieldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fp7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTQueryTableDeletedFieldsImpl.this.setDeletedFieldArray(((Integer) obj).intValue(), (CTDeletedField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gp7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTQueryTableDeletedFieldsImpl.this.insertNewDeletedField(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hp7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTQueryTableDeletedFieldsImpl.this.removeDeletedField(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ip7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTQueryTableDeletedFieldsImpl.this.sizeOfDeletedFieldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public CTDeletedField insertNewDeletedField(int i) {
        CTDeletedField cTDeletedField;
        synchronized (monitor()) {
            check_orphaned();
            cTDeletedField = (CTDeletedField) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDeletedField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public void removeDeletedField(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public void setDeletedFieldArray(CTDeletedField[] cTDeletedFieldArr) {
        check_orphaned();
        arraySetterHelper(cTDeletedFieldArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public int sizeOfDeletedFieldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public CTDeletedField getDeletedFieldArray(int i) {
        CTDeletedField cTDeletedField;
        synchronized (monitor()) {
            check_orphaned();
            cTDeletedField = (CTDeletedField) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDeletedField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDeletedField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTableDeletedFields
    public void setDeletedFieldArray(int i, CTDeletedField cTDeletedField) {
        generatedSetterHelperImpl(cTDeletedField, PROPERTY_QNAME[0], i, (short) 2);
    }
}
