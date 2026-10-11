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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatch;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCellWatchesImpl;

/* loaded from: classes15.dex */
public class CTCellWatchesImpl extends XmlComplexContentImpl implements CTCellWatches {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cellWatch")};
    private static final long serialVersionUID = 1;

    public CTCellWatchesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public CTCellWatch addNewCellWatch() {
        CTCellWatch cTCellWatch;
        synchronized (monitor()) {
            check_orphaned();
            cTCellWatch = (CTCellWatch) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCellWatch;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public CTCellWatch[] getCellWatchArray() {
        return (CTCellWatch[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCellWatch[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public List<CTCellWatch> getCellWatchList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z61
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellWatchesImpl.this.getCellWatchArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a71
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCellWatchesImpl.this.setCellWatchArray(((Integer) obj).intValue(), (CTCellWatch) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b71
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCellWatchesImpl.this.insertNewCellWatch(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c71
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCellWatchesImpl.this.removeCellWatch(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d71
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCellWatchesImpl.this.sizeOfCellWatchArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public CTCellWatch insertNewCellWatch(int i) {
        CTCellWatch cTCellWatch;
        synchronized (monitor()) {
            check_orphaned();
            cTCellWatch = (CTCellWatch) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCellWatch;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public void removeCellWatch(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public void setCellWatchArray(CTCellWatch[] cTCellWatchArr) {
        check_orphaned();
        arraySetterHelper(cTCellWatchArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public int sizeOfCellWatchArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public CTCellWatch getCellWatchArray(int i) {
        CTCellWatch cTCellWatch;
        synchronized (monitor()) {
            check_orphaned();
            cTCellWatch = (CTCellWatch) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCellWatch == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCellWatch;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellWatches
    public void setCellWatchArray(int i, CTCellWatch cTCellWatch) {
        generatedSetterHelperImpl(cTCellWatch, PROPERTY_QNAME[0], i, (short) 2);
    }
}
