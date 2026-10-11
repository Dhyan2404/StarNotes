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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTPivotFieldsImpl;

/* loaded from: classes15.dex */
public class CTPivotFieldsImpl extends XmlComplexContentImpl implements CTPivotFields {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotField"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTPivotFieldsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public CTPivotField addNewPivotField() {
        CTPivotField cTPivotField;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotField = (CTPivotField) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public CTPivotField[] getPivotFieldArray() {
        return (CTPivotField[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public List<CTPivotField> getPivotFieldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotFieldsImpl.this.getPivotFieldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b97
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPivotFieldsImpl.this.setPivotFieldArray(((Integer) obj).intValue(), (CTPivotField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotFieldsImpl.this.insertNewPivotField(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d97
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPivotFieldsImpl.this.removePivotField(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e97
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPivotFieldsImpl.this.sizeOfPivotFieldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public CTPivotField insertNewPivotField(int i) {
        CTPivotField cTPivotField;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotField = (CTPivotField) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public void removePivotField(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public void setPivotFieldArray(CTPivotField[] cTPivotFieldArr) {
        check_orphaned();
        arraySetterHelper(cTPivotFieldArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public int sizeOfPivotFieldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public CTPivotField getPivotFieldArray(int i) {
        CTPivotField cTPivotField;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotField = (CTPivotField) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields
    public void setPivotFieldArray(int i, CTPivotField cTPivotField) {
        generatedSetterHelperImpl(cTPivotField, PROPERTY_QNAME[0], i, (short) 2);
    }
}
