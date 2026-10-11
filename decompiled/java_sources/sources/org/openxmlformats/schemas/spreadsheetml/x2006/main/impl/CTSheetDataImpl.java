package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRow;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSheetDataImpl;

/* loaded from: classes15.dex */
public class CTSheetDataImpl extends XmlComplexContentImpl implements CTSheetData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "row")};
    private static final long serialVersionUID = 1;

    public CTSheetDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public CTRow addNewRow() {
        CTRow cTRow;
        synchronized (monitor()) {
            check_orphaned();
            cTRow = (CTRow) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRow;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public CTRow[] getRowArray() {
        return (CTRow[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRow[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public List<CTRow> getRowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h3b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSheetDataImpl.this.getRowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i3b
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSheetDataImpl.this.setRowArray(((Integer) obj).intValue(), (CTRow) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j3b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSheetDataImpl.this.insertNewRow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k3b
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSheetDataImpl.this.removeRow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l3b
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSheetDataImpl.this.sizeOfRowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public CTRow insertNewRow(int i) {
        CTRow cTRow;
        synchronized (monitor()) {
            check_orphaned();
            cTRow = (CTRow) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRow;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public void removeRow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public void setRowArray(CTRow[] cTRowArr) {
        check_orphaned();
        arraySetterHelper(cTRowArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public int sizeOfRowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public CTRow getRowArray(int i) {
        CTRow cTRow;
        synchronized (monitor()) {
            check_orphaned();
            cTRow = (CTRow) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRow == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRow;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetData
    public void setRowArray(int i, CTRow cTRow) {
        generatedSetterHelperImpl(cTRow, PROPERTY_QNAME[0], i, (short) 2);
    }
}
