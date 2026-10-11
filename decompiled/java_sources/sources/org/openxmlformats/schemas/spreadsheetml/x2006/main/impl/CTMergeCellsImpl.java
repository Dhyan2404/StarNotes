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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMergeCellsImpl;

/* loaded from: classes15.dex */
public class CTMergeCellsImpl extends XmlComplexContentImpl implements CTMergeCells {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "mergeCell"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMergeCellsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public CTMergeCell addNewMergeCell() {
        CTMergeCell cTMergeCell;
        synchronized (monitor()) {
            check_orphaned();
            cTMergeCell = (CTMergeCell) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMergeCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public CTMergeCell[] getMergeCellArray() {
        return (CTMergeCell[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMergeCell[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public List<CTMergeCell> getMergeCellList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.em5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMergeCellsImpl.this.getMergeCellArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fm5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMergeCellsImpl.this.setMergeCellArray(((Integer) obj).intValue(), (CTMergeCell) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gm5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMergeCellsImpl.this.insertNewMergeCell(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hm5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMergeCellsImpl.this.removeMergeCell(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.im5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMergeCellsImpl.this.sizeOfMergeCellArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public CTMergeCell insertNewMergeCell(int i) {
        CTMergeCell cTMergeCell;
        synchronized (monitor()) {
            check_orphaned();
            cTMergeCell = (CTMergeCell) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMergeCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public void removeMergeCell(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public void setMergeCellArray(CTMergeCell[] cTMergeCellArr) {
        check_orphaned();
        arraySetterHelper(cTMergeCellArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public int sizeOfMergeCellArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public CTMergeCell getMergeCellArray(int i) {
        CTMergeCell cTMergeCell;
        synchronized (monitor()) {
            check_orphaned();
            cTMergeCell = (CTMergeCell) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMergeCell == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMergeCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMergeCells
    public void setMergeCellArray(int i, CTMergeCell cTMergeCell) {
        generatedSetterHelperImpl(cTMergeCell, PROPERTY_QNAME[0], i, (short) 2);
    }
}
