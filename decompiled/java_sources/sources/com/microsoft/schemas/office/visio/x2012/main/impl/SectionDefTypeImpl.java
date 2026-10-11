package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CellDefType;
import com.microsoft.schemas.office.visio.x2012.main.RowDefType;
import com.microsoft.schemas.office.visio.x2012.main.SectionDefType;
import com.microsoft.schemas.office.visio.x2012.main.impl.SectionDefTypeImpl;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class SectionDefTypeImpl extends XmlComplexContentImpl implements SectionDefType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "CellDef"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "RowDef"), new QName("", "N"), new QName("", "T"), new QName("", "S")};
    private static final long serialVersionUID = 1;

    public SectionDefTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public CellDefType addNewCellDef() {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public RowDefType addNewRowDef() {
        RowDefType rowDefType;
        synchronized (monitor()) {
            check_orphaned();
            rowDefType = (RowDefType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return rowDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public CellDefType[] getCellDefArray() {
        return (CellDefType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CellDefType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public List<CellDefType> getCellDefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionDefTypeImpl.this.getCellDefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b9m
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    SectionDefTypeImpl.this.setCellDefArray(((Integer) obj).intValue(), (CellDefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c9m
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return SectionDefTypeImpl.this.insertNewCellDef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d9m
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SectionDefTypeImpl.this.removeCellDef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e9m
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(SectionDefTypeImpl.this.sizeOfCellDefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public String getN() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public RowDefType getRowDef() {
        RowDefType rowDefType;
        synchronized (monitor()) {
            check_orphaned();
            rowDefType = (RowDefType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (rowDefType == null) {
                rowDefType = null;
            }
        }
        return rowDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public short getS() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public String getT() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public CellDefType insertNewCellDef(int i) {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public boolean isSetRowDef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public boolean isSetS() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public boolean isSetT() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void removeCellDef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void setCellDefArray(CellDefType[] cellDefTypeArr) {
        check_orphaned();
        arraySetterHelper(cellDefTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void setRowDef(RowDefType rowDefType) {
        generatedSetterHelperImpl(rowDefType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void setS(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void setT(String str) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public int sizeOfCellDefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void unsetRowDef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void unsetS() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void unsetT() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public XmlString xgetN() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public XmlUnsignedByte xgetS() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public XmlString xgetT() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void xsetS(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void xsetT(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public CellDefType getCellDefArray(int i) {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cellDefType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.SectionDefType
    public void setCellDefArray(int i, CellDefType cellDefType) {
        generatedSetterHelperImpl(cellDefType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
