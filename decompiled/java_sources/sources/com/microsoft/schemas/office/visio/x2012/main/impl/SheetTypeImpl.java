package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.SectionType;
import com.microsoft.schemas.office.visio.x2012.main.SheetType;
import com.microsoft.schemas.office.visio.x2012.main.TriggerType;
import com.microsoft.schemas.office.visio.x2012.main.impl.SheetTypeImpl;
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
public class SheetTypeImpl extends XmlComplexContentImpl implements SheetType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Cell"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "Trigger"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "Section"), new QName("", "LineStyle"), new QName("", "FillStyle"), new QName("", "TextStyle")};
    private static final long serialVersionUID = 1;

    public SheetTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public CellType addNewCell() {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public SectionType addNewSection() {
        SectionType sectionType;
        synchronized (monitor()) {
            check_orphaned();
            sectionType = (SectionType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return sectionType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public TriggerType addNewTrigger() {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public CellType[] getCellArray() {
        return (CellType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CellType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public List<CellType> getCellList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jom
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SheetTypeImpl.this.getCellArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kom
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SheetTypeImpl.this.setCellArray(((Integer) obj).intValue(), (CellType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lom
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SheetTypeImpl.this.insertNewCell(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mom
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SheetTypeImpl.this.removeCell(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nom
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SheetTypeImpl.this.sizeOfCellArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public long getFillStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public long getLineStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public SectionType[] getSectionArray() {
        return (SectionType[]) getXmlObjectArray(PROPERTY_QNAME[2], new SectionType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public List<SectionType> getSectionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.aom
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SheetTypeImpl.this.getSectionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bom
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SheetTypeImpl.this.setSectionArray(((Integer) obj).intValue(), (SectionType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.com
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SheetTypeImpl.this.insertNewSection(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dom
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SheetTypeImpl.this.removeSection(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eom
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SheetTypeImpl.this.sizeOfSectionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public long getTextStyle() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public TriggerType[] getTriggerArray() {
        return (TriggerType[]) getXmlObjectArray(PROPERTY_QNAME[1], new TriggerType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public List<TriggerType> getTriggerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.znm
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SheetTypeImpl.this.getTriggerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fom
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SheetTypeImpl.this.setTriggerArray(((Integer) obj).intValue(), (TriggerType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gom
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SheetTypeImpl.this.insertNewTrigger(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hom
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SheetTypeImpl.this.removeTrigger(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.iom
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SheetTypeImpl.this.sizeOfTriggerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public CellType insertNewCell(int i) {
        CellType cellType;
        synchronized (monitor()) {
            check_orphaned();
            cellType = (CellType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cellType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public SectionType insertNewSection(int i) {
        SectionType sectionType;
        synchronized (monitor()) {
            check_orphaned();
            sectionType = (SectionType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return sectionType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public TriggerType insertNewTrigger(int i) {
        TriggerType triggerType;
        synchronized (monitor()) {
            check_orphaned();
            triggerType = (TriggerType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return triggerType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public boolean isSetFillStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public boolean isSetLineStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public boolean isSetTextStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void removeCell(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void removeSection(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void removeTrigger(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setCellArray(CellType[] cellTypeArr) {
        check_orphaned();
        arraySetterHelper(cellTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setFillStyle(long j) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setLineStyle(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setSectionArray(SectionType[] sectionTypeArr) {
        check_orphaned();
        arraySetterHelper(sectionTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setTextStyle(long j) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setTriggerArray(TriggerType[] triggerTypeArr) {
        check_orphaned();
        arraySetterHelper(triggerTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public int sizeOfCellArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public int sizeOfSectionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public int sizeOfTriggerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void unsetFillStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void unsetLineStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void unsetTextStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public XmlUnsignedInt xgetFillStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public XmlUnsignedInt xgetLineStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public XmlUnsignedInt xgetTextStyle() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void xsetFillStyle(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void xsetLineStyle(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void xsetTextStyle(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public SectionType getSectionArray(int i) {
        SectionType sectionType;
        synchronized (monitor()) {
            check_orphaned();
            sectionType = (SectionType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (sectionType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sectionType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setCellArray(int i, CellType cellType) {
        generatedSetterHelperImpl(cellType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setSectionArray(int i, SectionType sectionType) {
        generatedSetterHelperImpl(sectionType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SheetType
    public void setTriggerArray(int i, TriggerType triggerType) {
        generatedSetterHelperImpl(triggerType, PROPERTY_QNAME[1], i, (short) 2);
    }
}
