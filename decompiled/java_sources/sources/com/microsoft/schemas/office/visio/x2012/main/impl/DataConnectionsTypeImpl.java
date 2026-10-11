package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.DataConnectionType;
import com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType;
import com.microsoft.schemas.office.visio.x2012.main.impl.DataConnectionsTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataConnectionsTypeImpl extends XmlComplexContentImpl implements DataConnectionsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "DataConnection"), new QName("", "NextID")};
    private static final long serialVersionUID = 1;

    public DataConnectionsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public DataConnectionType addNewDataConnection() {
        DataConnectionType dataConnectionType;
        synchronized (monitor()) {
            check_orphaned();
            dataConnectionType = (DataConnectionType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataConnectionType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public DataConnectionType[] getDataConnectionArray() {
        return (DataConnectionType[]) getXmlObjectArray(PROPERTY_QNAME[0], new DataConnectionType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public List<DataConnectionType> getDataConnectionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sse
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataConnectionsTypeImpl.this.getDataConnectionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tse
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DataConnectionsTypeImpl.this.setDataConnectionArray(((Integer) obj).intValue(), (DataConnectionType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.use
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DataConnectionsTypeImpl.this.insertNewDataConnection(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vse
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataConnectionsTypeImpl.this.removeDataConnection(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wse
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(DataConnectionsTypeImpl.this.sizeOfDataConnectionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public long getNextID() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public DataConnectionType insertNewDataConnection(int i) {
        DataConnectionType dataConnectionType;
        synchronized (monitor()) {
            check_orphaned();
            dataConnectionType = (DataConnectionType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return dataConnectionType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public void removeDataConnection(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public void setDataConnectionArray(DataConnectionType[] dataConnectionTypeArr) {
        check_orphaned();
        arraySetterHelper(dataConnectionTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public int sizeOfDataConnectionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public XmlUnsignedInt xgetNextID() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public DataConnectionType getDataConnectionArray(int i) {
        DataConnectionType dataConnectionType;
        synchronized (monitor()) {
            check_orphaned();
            dataConnectionType = (DataConnectionType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (dataConnectionType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return dataConnectionType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType
    public void setDataConnectionArray(int i, DataConnectionType dataConnectionType) {
        generatedSetterHelperImpl(dataConnectionType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
