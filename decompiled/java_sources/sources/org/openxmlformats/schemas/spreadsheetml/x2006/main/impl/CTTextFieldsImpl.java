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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTTextFieldsImpl;

/* loaded from: classes15.dex */
public class CTTextFieldsImpl extends XmlComplexContentImpl implements CTTextFields {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "textField"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTTextFieldsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public CTTextField addNewTextField() {
        CTTextField cTTextField;
        synchronized (monitor()) {
            check_orphaned();
            cTTextField = (CTTextField) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public CTTextField[] getTextFieldArray() {
        return (CTTextField[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTextField[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public List<CTTextField> getTextFieldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.crc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTextFieldsImpl.this.getTextFieldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.drc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTextFieldsImpl.this.setTextFieldArray(((Integer) obj).intValue(), (CTTextField) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.erc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTextFieldsImpl.this.insertNewTextField(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.frc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTextFieldsImpl.this.removeTextField(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.grc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTextFieldsImpl.this.sizeOfTextFieldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public CTTextField insertNewTextField(int i) {
        CTTextField cTTextField;
        synchronized (monitor()) {
            check_orphaned();
            cTTextField = (CTTextField) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTextField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public void removeTextField(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public void setTextFieldArray(CTTextField[] cTTextFieldArr) {
        check_orphaned();
        arraySetterHelper(cTTextFieldArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public int sizeOfTextFieldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public CTTextField getTextFieldArray(int i) {
        CTTextField cTTextField;
        synchronized (monitor()) {
            check_orphaned();
            cTTextField = (CTTextField) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTextField == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextField;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTextFields
    public void setTextFieldArray(int i, CTTextField cTTextField) {
        generatedSetterHelperImpl(cTTextField, PROPERTY_QNAME[0], i, (short) 2);
    }
}
