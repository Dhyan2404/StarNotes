package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.DataRecordSetType;
import com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType;
import com.microsoft.schemas.office.visio.x2012.main.impl.DataRecordSetsTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataRecordSetsTypeImpl extends XmlComplexContentImpl implements DataRecordSetsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "DataRecordSet"), new QName("", "NextID"), new QName("", "ActiveRecordsetID"), new QName("", "DataWindowOrder")};
    private static final long serialVersionUID = 1;

    public DataRecordSetsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public DataRecordSetType addNewDataRecordSet() {
        DataRecordSetType dataRecordSetType;
        synchronized (monitor()) {
            check_orphaned();
            dataRecordSetType = (DataRecordSetType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataRecordSetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public long getActiveRecordsetID() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public DataRecordSetType[] getDataRecordSetArray() {
        return (DataRecordSetType[]) getXmlObjectArray(PROPERTY_QNAME[0], new DataRecordSetType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public List<DataRecordSetType> getDataRecordSetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hue
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetsTypeImpl.this.getDataRecordSetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iue
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataRecordSetsTypeImpl.this.setDataRecordSetArray(((Integer) obj).intValue(), (DataRecordSetType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jue
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataRecordSetsTypeImpl.this.insertNewDataRecordSet(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kue
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataRecordSetsTypeImpl.this.removeDataRecordSet(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lue
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataRecordSetsTypeImpl.this.sizeOfDataRecordSetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public String getDataWindowOrder() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public long getNextID() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public DataRecordSetType insertNewDataRecordSet(int i) {
        DataRecordSetType dataRecordSetType;
        synchronized (monitor()) {
            check_orphaned();
            dataRecordSetType = (DataRecordSetType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return dataRecordSetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public boolean isSetActiveRecordsetID() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public boolean isSetDataWindowOrder() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void removeDataRecordSet(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void setActiveRecordsetID(long j) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void setDataRecordSetArray(DataRecordSetType[] dataRecordSetTypeArr) {
        check_orphaned();
        arraySetterHelper(dataRecordSetTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void setDataWindowOrder(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void setNextID(long j) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public int sizeOfDataRecordSetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void unsetActiveRecordsetID() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void unsetDataWindowOrder() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public XmlUnsignedInt xgetActiveRecordsetID() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public XmlString xgetDataWindowOrder() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public XmlUnsignedInt xgetNextID() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void xsetActiveRecordsetID(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void xsetDataWindowOrder(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void xsetNextID(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public DataRecordSetType getDataRecordSetArray(int i) {
        DataRecordSetType dataRecordSetType;
        synchronized (monitor()) {
            check_orphaned();
            dataRecordSetType = (DataRecordSetType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (dataRecordSetType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return dataRecordSetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType
    public void setDataRecordSetArray(int i, DataRecordSetType dataRecordSetType) {
        generatedSetterHelperImpl(dataRecordSetType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
