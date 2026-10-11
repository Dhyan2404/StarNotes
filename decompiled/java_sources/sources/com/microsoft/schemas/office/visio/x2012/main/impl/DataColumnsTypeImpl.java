package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.DataColumnType;
import com.microsoft.schemas.office.visio.x2012.main.DataColumnsType;
import com.microsoft.schemas.office.visio.x2012.main.impl.DataColumnsTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataColumnsTypeImpl extends XmlComplexContentImpl implements DataColumnsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "DataColumn"), new QName("", "SortColumn"), new QName("", "SortAsc")};
    private static final long serialVersionUID = 1;

    public DataColumnsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public DataColumnType addNewDataColumn() {
        DataColumnType dataColumnType;
        synchronized (monitor()) {
            check_orphaned();
            dataColumnType = (DataColumnType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataColumnType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public DataColumnType[] getDataColumnArray() {
        return (DataColumnType[]) getXmlObjectArray(PROPERTY_QNAME[0], new DataColumnType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public List<DataColumnType> getDataColumnList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nse
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataColumnsTypeImpl.this.getDataColumnArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ose
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataColumnsTypeImpl.this.setDataColumnArray(((Integer) obj).intValue(), (DataColumnType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pse
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataColumnsTypeImpl.this.insertNewDataColumn(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qse
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataColumnsTypeImpl.this.removeDataColumn(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rse
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataColumnsTypeImpl.this.sizeOfDataColumnArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public boolean getSortAsc() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public String getSortColumn() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public DataColumnType insertNewDataColumn(int i) {
        DataColumnType dataColumnType;
        synchronized (monitor()) {
            check_orphaned();
            dataColumnType = (DataColumnType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return dataColumnType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public boolean isSetSortAsc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public boolean isSetSortColumn() {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void removeDataColumn(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void setDataColumnArray(DataColumnType[] dataColumnTypeArr) {
        check_orphaned();
        arraySetterHelper(dataColumnTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void setSortAsc(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void setSortColumn(String str) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public int sizeOfDataColumnArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void unsetSortAsc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void unsetSortColumn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public XmlBoolean xgetSortAsc() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public XmlString xgetSortColumn() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void xsetSortAsc(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void xsetSortColumn(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public DataColumnType getDataColumnArray(int i) {
        DataColumnType dataColumnType;
        synchronized (monitor()) {
            check_orphaned();
            dataColumnType = (DataColumnType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (dataColumnType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return dataColumnType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataColumnsType
    public void setDataColumnArray(int i, DataColumnType dataColumnType) {
        generatedSetterHelperImpl(dataColumnType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
