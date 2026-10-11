package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.RowType;
import com.microsoft.schemas.office.visio.x2012.main.TriggerType;
import com.microsoft.schemas.office.visio.x2012.main.impl.RowTypeImpl;
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
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class RowTypeImpl extends XmlComplexContentImpl implements RowType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Cell"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "Trigger"), new QName("", "N"), new QName("", "LocalName"), new QName("", "IX"), new QName("", "T"), new QName("", "Del")};
    private static final long serialVersionUID = 1;

    public RowTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public CellType addNewCell() {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public TriggerType addNewTrigger() {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public CellType[] getCellArray() {
        return (CellType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CellType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public List<CellType> getCellList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.etl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RowTypeImpl.this.getCellArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ftl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RowTypeImpl.this.setCellArray(((Integer) obj).intValue(), (CellType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gtl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RowTypeImpl.this.insertNewCell(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.htl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RowTypeImpl.this.removeCell(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.itl
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(RowTypeImpl.this.sizeOfCellArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public boolean getDel() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public long getIX() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public String getLocalName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public String getN() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public String getT() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public TriggerType[] getTriggerArray() {
        return (TriggerType[]) getXmlObjectArray(PROPERTY_QNAME[1], new TriggerType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public List<TriggerType> getTriggerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zsl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RowTypeImpl.this.getTriggerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.atl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RowTypeImpl.this.setTriggerArray(((Integer) obj).intValue(), (TriggerType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.btl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RowTypeImpl.this.insertNewTrigger(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ctl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RowTypeImpl.this.removeTrigger(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dtl
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(RowTypeImpl.this.sizeOfTriggerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public CellType insertNewCell(int i) {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public TriggerType insertNewTrigger(int i) {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public boolean isSetDel() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public boolean isSetIX() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public boolean isSetLocalName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public boolean isSetN() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public boolean isSetT() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void removeCell(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void removeTrigger(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setCellArray(CellType[] cellTypeArr) {
        check_orphaned();
        arraySetterHelper(cellTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setDel(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setIX(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setLocalName(String str) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setN(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setT(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setTriggerArray(TriggerType[] triggerTypeArr) {
        check_orphaned();
        arraySetterHelper(triggerTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public int sizeOfCellArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public int sizeOfTriggerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void unsetDel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void unsetIX() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void unsetLocalName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void unsetN() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void unsetT() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public XmlBoolean xgetDel() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public XmlUnsignedInt xgetIX() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public XmlString xgetLocalName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public XmlString xgetN() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public XmlString xgetT() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void xsetDel(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void xsetIX(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void xsetLocalName(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void xsetN(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void xsetT(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public CellType getCellArray(int i) {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cellType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public TriggerType getTriggerArray(int i) {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (triggerType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setCellArray(int i, CellType cellType) {
        generatedSetterHelperImpl(cellType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowType
    public void setTriggerArray(int i, TriggerType triggerType) {
        generatedSetterHelperImpl(triggerType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
