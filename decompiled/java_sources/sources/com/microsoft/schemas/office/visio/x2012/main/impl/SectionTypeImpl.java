package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.RowType;
import com.microsoft.schemas.office.visio.x2012.main.SectionType;
import com.microsoft.schemas.office.visio.x2012.main.TriggerType;
import com.microsoft.schemas.office.visio.x2012.main.impl.SectionTypeImpl;
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
public class SectionTypeImpl extends XmlComplexContentImpl implements SectionType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Cell"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "Trigger"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "Row"), new QName("", "N"), new QName("", "Del"), new QName("", "IX")};
    private static final long serialVersionUID = 1;

    public SectionTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public CellType addNewCell() {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public RowType addNewRow() {
        RowType rowType;
        synchronized (monitor()) {
            check_orphaned();
            rowType = (RowType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return rowType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public TriggerType addNewTrigger() {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public CellType[] getCellArray() {
        return (CellType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CellType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public List<CellType> getCellList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionTypeImpl.this.getCellArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l9m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SectionTypeImpl.this.setCellArray(((Integer) obj).intValue(), (CellType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionTypeImpl.this.insertNewCell(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n9m
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SectionTypeImpl.this.removeCell(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o9m
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SectionTypeImpl.this.sizeOfCellArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public boolean getDel() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public long getIX() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public String getN() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public RowType[] getRowArray() {
        return (RowType[]) getXmlObjectArray(PROPERTY_QNAME[2], new RowType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public List<RowType> getRowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionTypeImpl.this.getRowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h9m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SectionTypeImpl.this.setRowArray(((Integer) obj).intValue(), (RowType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionTypeImpl.this.insertNewRow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j9m
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SectionTypeImpl.this.removeRow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k9m
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SectionTypeImpl.this.sizeOfRowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public TriggerType[] getTriggerArray() {
        return (TriggerType[]) getXmlObjectArray(PROPERTY_QNAME[1], new TriggerType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public List<TriggerType> getTriggerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionTypeImpl.this.getTriggerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q9m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SectionTypeImpl.this.setTriggerArray(((Integer) obj).intValue(), (TriggerType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionTypeImpl.this.insertNewTrigger(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s9m
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SectionTypeImpl.this.removeTrigger(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t9m
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SectionTypeImpl.this.sizeOfTriggerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public CellType insertNewCell(int i) {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public RowType insertNewRow(int i) {
        RowType rowType;
        synchronized (monitor()) {
            check_orphaned();
            rowType = (RowType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return rowType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public TriggerType insertNewTrigger(int i) {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public boolean isSetDel() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public boolean isSetIX() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void removeCell(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void removeRow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void removeTrigger(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setCellArray(CellType[] cellTypeArr) {
        check_orphaned();
        arraySetterHelper(cellTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setDel(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setIX(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setN(String str) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setRowArray(RowType[] rowTypeArr) {
        check_orphaned();
        arraySetterHelper(rowTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setTriggerArray(TriggerType[] triggerTypeArr) {
        check_orphaned();
        arraySetterHelper(triggerTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public int sizeOfCellArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public int sizeOfRowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public int sizeOfTriggerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void unsetDel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void unsetIX() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public XmlBoolean xgetDel() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public XmlUnsignedInt xgetIX() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public XmlString xgetN() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void xsetDel(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void xsetIX(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void xsetN(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public RowType getRowArray(int i) {
        RowType rowType;
        synchronized (monitor()) {
            check_orphaned();
            rowType = (RowType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (rowType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return rowType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setCellArray(int i, CellType cellType) {
        generatedSetterHelperImpl(cellType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setRowArray(int i, RowType rowType) {
        generatedSetterHelperImpl(rowType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionType
    public void setTriggerArray(int i, TriggerType triggerType) {
        generatedSetterHelperImpl(triggerType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
