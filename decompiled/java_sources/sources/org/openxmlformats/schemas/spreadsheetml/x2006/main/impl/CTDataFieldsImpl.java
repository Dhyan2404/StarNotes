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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTDataFieldsImpl;

/* loaded from: classes15.dex */
public class CTDataFieldsImpl extends XmlComplexContentImpl implements CTDataFields {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "dataField"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTDataFieldsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public CTDataField addNewDataField() {
        CTDataField cTDataField;
        synchronized (monitor()) {
            check_orphaned();
            cTDataField = (CTDataField) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDataField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public CTDataField[] getDataFieldArray() {
        return (CTDataField[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDataField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public List<CTDataField> getDataFieldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s53
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDataFieldsImpl.this.getDataFieldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t53
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDataFieldsImpl.this.setDataFieldArray(((Integer) obj).intValue(), (CTDataField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.u53
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDataFieldsImpl.this.insertNewDataField(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.v53
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDataFieldsImpl.this.removeDataField(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.w53
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDataFieldsImpl.this.sizeOfDataFieldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public CTDataField insertNewDataField(int i) {
        CTDataField cTDataField;
        synchronized (monitor()) {
            check_orphaned();
            cTDataField = (CTDataField) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDataField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public void removeDataField(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public void setDataFieldArray(CTDataField[] cTDataFieldArr) {
        check_orphaned();
        arraySetterHelper(cTDataFieldArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public int sizeOfDataFieldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public CTDataField getDataFieldArray(int i) {
        CTDataField cTDataField;
        synchronized (monitor()) {
            check_orphaned();
            cTDataField = (CTDataField) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDataField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDataField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields
    public void setDataFieldArray(int i, CTDataField cTDataField) {
        generatedSetterHelperImpl(cTDataField, PROPERTY_QNAME[0], i, (short) 2);
    }
}
