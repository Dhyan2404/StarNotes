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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValue;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTDdeValuesImpl;

/* loaded from: classes15.dex */
public class CTDdeValuesImpl extends XmlComplexContentImpl implements CTDdeValues {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "value"), new QName("", "rows"), new QName("", "cols")};
    private static final long serialVersionUID = 1;

    public CTDdeValuesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public CTDdeValue addNewValue() {
        CTDdeValue cTDdeValue;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeValue = (CTDdeValue) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDdeValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public long getCols() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public long getRows() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public CTDdeValue[] getValueArray() {
        return (CTDdeValue[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDdeValue[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public List<CTDdeValue> getValueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w63
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDdeValuesImpl.this.getValueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x63
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDdeValuesImpl.this.setValueArray(((Integer) obj).intValue(), (CTDdeValue) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y63
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDdeValuesImpl.this.insertNewValue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z63
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDdeValuesImpl.this.removeValue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a73
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDdeValuesImpl.this.sizeOfValueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public CTDdeValue insertNewValue(int i) {
        CTDdeValue cTDdeValue;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeValue = (CTDdeValue) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDdeValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public boolean isSetCols() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public boolean isSetRows() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void removeValue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void setCols(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void setRows(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void setValueArray(CTDdeValue[] cTDdeValueArr) {
        check_orphaned();
        arraySetterHelper(cTDdeValueArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public int sizeOfValueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void unsetCols() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void unsetRows() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public XmlUnsignedInt xgetCols() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public XmlUnsignedInt xgetRows() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void xsetCols(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void xsetRows(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public CTDdeValue getValueArray(int i) {
        CTDdeValue cTDdeValue;
        synchronized (monitor()) {
            check_orphaned();
            cTDdeValue = (CTDdeValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDdeValue == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDdeValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDdeValues
    public void setValueArray(int i, CTDdeValue cTDdeValue) {
        generatedSetterHelperImpl(cTDdeValue, PROPERTY_QNAME[0], i, (short) 2);
    }
}
