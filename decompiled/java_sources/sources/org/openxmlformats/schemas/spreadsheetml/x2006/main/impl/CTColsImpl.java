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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCol;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTColsImpl;

/* loaded from: classes15.dex */
public class CTColsImpl extends XmlComplexContentImpl implements CTCols {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "col")};
    private static final long serialVersionUID = 1;

    public CTColsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public CTCol addNewCol() {
        CTCol cTCol;
        synchronized (monitor()) {
            check_orphaned();
            cTCol = (CTCol) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCol;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public CTCol[] getColArray() {
        return (CTCol[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCol[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public List<CTCol> getColList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColsImpl.this.getColArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x22
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColsImpl.this.setColArray(((Integer) obj).intValue(), (CTCol) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColsImpl.this.insertNewCol(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z22
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColsImpl.this.removeCol(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a32
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColsImpl.this.sizeOfColArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public CTCol insertNewCol(int i) {
        CTCol cTCol;
        synchronized (monitor()) {
            check_orphaned();
            cTCol = (CTCol) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCol;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public void removeCol(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public void setColArray(CTCol[] cTColArr) {
        check_orphaned();
        arraySetterHelper(cTColArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public int sizeOfColArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public CTCol getColArray(int i) {
        CTCol cTCol;
        synchronized (monitor()) {
            check_orphaned();
            cTCol = (CTCol) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCol == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCol;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCols
    public void setColArray(int i, CTCol cTCol) {
        generatedSetterHelperImpl(cTCol, PROPERTY_QNAME[0], i, (short) 2);
    }
}
