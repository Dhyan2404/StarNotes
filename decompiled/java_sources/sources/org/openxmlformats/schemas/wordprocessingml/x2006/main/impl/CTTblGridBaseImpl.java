package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridCol;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTTblGridBaseImpl;

/* loaded from: classes16.dex */
public class CTTblGridBaseImpl extends XmlComplexContentImpl implements CTTblGridBase {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "gridCol")};
    private static final long serialVersionUID = 1;

    public CTTblGridBaseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public CTTblGridCol addNewGridCol() {
        CTTblGridCol cTTblGridCol;
        synchronized (monitor()) {
            check_orphaned();
            cTTblGridCol = (CTTblGridCol) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTblGridCol;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public CTTblGridCol[] getGridColArray() {
        return (CTTblGridCol[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTblGridCol[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public List<CTTblGridCol> getGridColList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ofc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTblGridBaseImpl.this.getGridColArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pfc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTblGridBaseImpl.this.setGridColArray(((Integer) obj).intValue(), (CTTblGridCol) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qfc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTblGridBaseImpl.this.insertNewGridCol(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rfc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTblGridBaseImpl.this.removeGridCol(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sfc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTblGridBaseImpl.this.sizeOfGridColArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public CTTblGridCol insertNewGridCol(int i) {
        CTTblGridCol cTTblGridCol;
        synchronized (monitor()) {
            check_orphaned();
            cTTblGridCol = (CTTblGridCol) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTblGridCol;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public void removeGridCol(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public void setGridColArray(CTTblGridCol[] cTTblGridColArr) {
        check_orphaned();
        arraySetterHelper(cTTblGridColArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public int sizeOfGridColArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public CTTblGridCol getGridColArray(int i) {
        CTTblGridCol cTTblGridCol;
        synchronized (monitor()) {
            check_orphaned();
            cTTblGridCol = (CTTblGridCol) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTblGridCol == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTblGridCol;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridBase
    public void setGridColArray(int i, CTTblGridCol cTTblGridCol) {
        generatedSetterHelperImpl(cTTblGridCol, PROPERTY_QNAME[0], i, (short) 2);
    }
}
