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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTExternalRowImpl;

/* loaded from: classes15.dex */
public class CTExternalRowImpl extends XmlComplexContentImpl implements CTExternalRow {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cell"), new QName("", "r")};
    private static final long serialVersionUID = 1;

    public CTExternalRowImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public CTExternalCell addNewCell() {
        CTExternalCell cTExternalCell;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalCell = (CTExternalCell) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExternalCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public CTExternalCell[] getCellArray() {
        return (CTExternalCell[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTExternalCell[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public List<CTExternalCell> getCellList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lr3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExternalRowImpl.this.getCellArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mr3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTExternalRowImpl.this.setCellArray(((Integer) obj).intValue(), (CTExternalCell) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nr3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExternalRowImpl.this.insertNewCell(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.or3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTExternalRowImpl.this.removeCell(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pr3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTExternalRowImpl.this.sizeOfCellArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public long getR() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public CTExternalCell insertNewCell(int i) {
        CTExternalCell cTExternalCell;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalCell = (CTExternalCell) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTExternalCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public void removeCell(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public void setCellArray(CTExternalCell[] cTExternalCellArr) {
        check_orphaned();
        arraySetterHelper(cTExternalCellArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public void setR(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public int sizeOfCellArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public XmlUnsignedInt xgetR() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public void xsetR(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public CTExternalCell getCellArray(int i) {
        CTExternalCell cTExternalCell;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalCell = (CTExternalCell) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTExternalCell == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTExternalCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow
    public void setCellArray(int i, CTExternalCell cTExternalCell) {
        generatedSetterHelperImpl(cTExternalCell, PROPERTY_QNAME[0], i, (short) 2);
    }
}
