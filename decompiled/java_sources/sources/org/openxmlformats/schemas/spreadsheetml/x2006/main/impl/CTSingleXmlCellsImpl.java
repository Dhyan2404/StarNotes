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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSingleXmlCellsImpl;

/* loaded from: classes15.dex */
public class CTSingleXmlCellsImpl extends XmlComplexContentImpl implements CTSingleXmlCells {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "singleXmlCell")};
    private static final long serialVersionUID = 1;

    public CTSingleXmlCellsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public CTSingleXmlCell addNewSingleXmlCell() {
        CTSingleXmlCell cTSingleXmlCell;
        synchronized (monitor()) {
            check_orphaned();
            cTSingleXmlCell = (CTSingleXmlCell) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSingleXmlCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public CTSingleXmlCell[] getSingleXmlCellArray() {
        return (CTSingleXmlCell[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTSingleXmlCell[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public List<CTSingleXmlCell> getSingleXmlCellList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zab
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSingleXmlCellsImpl.this.getSingleXmlCellArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.abb
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSingleXmlCellsImpl.this.setSingleXmlCellArray(((Integer) obj).intValue(), (CTSingleXmlCell) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bbb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSingleXmlCellsImpl.this.insertNewSingleXmlCell(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cbb
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSingleXmlCellsImpl.this.removeSingleXmlCell(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dbb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSingleXmlCellsImpl.this.sizeOfSingleXmlCellArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public CTSingleXmlCell insertNewSingleXmlCell(int i) {
        CTSingleXmlCell cTSingleXmlCell;
        synchronized (monitor()) {
            check_orphaned();
            cTSingleXmlCell = (CTSingleXmlCell) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTSingleXmlCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public void removeSingleXmlCell(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public void setSingleXmlCellArray(CTSingleXmlCell[] cTSingleXmlCellArr) {
        check_orphaned();
        arraySetterHelper(cTSingleXmlCellArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public int sizeOfSingleXmlCellArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public CTSingleXmlCell getSingleXmlCellArray(int i) {
        CTSingleXmlCell cTSingleXmlCell;
        synchronized (monitor()) {
            check_orphaned();
            cTSingleXmlCell = (CTSingleXmlCell) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTSingleXmlCell == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSingleXmlCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSingleXmlCells
    public void setSingleXmlCellArray(int i, CTSingleXmlCell cTSingleXmlCell) {
        generatedSetterHelperImpl(cTSingleXmlCell, PROPERTY_QNAME[0], i, (short) 2);
    }
}
