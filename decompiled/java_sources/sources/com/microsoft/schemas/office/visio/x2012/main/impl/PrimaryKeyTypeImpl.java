package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType;
import com.microsoft.schemas.office.visio.x2012.main.RowKeyValueType;
import com.microsoft.schemas.office.visio.x2012.main.impl.PrimaryKeyTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class PrimaryKeyTypeImpl extends XmlComplexContentImpl implements PrimaryKeyType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "RowKeyValue"), new QName("", "ColumnNameID")};
    private static final long serialVersionUID = 1;

    public PrimaryKeyTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public RowKeyValueType addNewRowKeyValue() {
        RowKeyValueType rowKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rowKeyValueType = (RowKeyValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return rowKeyValueType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public String getColumnNameID() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public RowKeyValueType[] getRowKeyValueArray() {
        return (RowKeyValueType[]) getXmlObjectArray(PROPERTY_QNAME[0], new RowKeyValueType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public List<RowKeyValueType> getRowKeyValueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z6l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return PrimaryKeyTypeImpl.this.getRowKeyValueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a7l
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    PrimaryKeyTypeImpl.this.setRowKeyValueArray(((Integer) obj).intValue(), (RowKeyValueType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b7l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return PrimaryKeyTypeImpl.this.insertNewRowKeyValue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c7l
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PrimaryKeyTypeImpl.this.removeRowKeyValue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d7l
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(PrimaryKeyTypeImpl.this.sizeOfRowKeyValueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public RowKeyValueType insertNewRowKeyValue(int i) {
        RowKeyValueType rowKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rowKeyValueType = (RowKeyValueType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return rowKeyValueType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public void removeRowKeyValue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public void setColumnNameID(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public void setRowKeyValueArray(RowKeyValueType[] rowKeyValueTypeArr) {
        check_orphaned();
        arraySetterHelper(rowKeyValueTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public int sizeOfRowKeyValueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public XmlString xgetColumnNameID() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public void xsetColumnNameID(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public RowKeyValueType getRowKeyValueArray(int i) {
        RowKeyValueType rowKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rowKeyValueType = (RowKeyValueType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (rowKeyValueType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return rowKeyValueType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.PrimaryKeyType
    public void setRowKeyValueArray(int i, RowKeyValueType rowKeyValueType) {
        generatedSetterHelperImpl(rowKeyValueType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
