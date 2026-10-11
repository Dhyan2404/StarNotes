package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTPivotFmtsImpl;

/* loaded from: classes14.dex */
public class CTPivotFmtsImpl extends XmlComplexContentImpl implements CTPivotFmts {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "pivotFmt")};
    private static final long serialVersionUID = 1;

    public CTPivotFmtsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public CTPivotFmt addNewPivotFmt() {
        CTPivotFmt cTPivotFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotFmt = (CTPivotFmt) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotFmt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public CTPivotFmt[] getPivotFmtArray() {
        return (CTPivotFmt[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPivotFmt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public List<CTPivotFmt> getPivotFmtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotFmtsImpl.this.getPivotFmtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.l97
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPivotFmtsImpl.this.setPivotFmtArray(((Integer) obj).intValue(), (CTPivotFmt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.m97
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPivotFmtsImpl.this.insertNewPivotFmt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.n97
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPivotFmtsImpl.this.removePivotFmt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o97
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPivotFmtsImpl.this.sizeOfPivotFmtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public CTPivotFmt insertNewPivotFmt(int i) {
        CTPivotFmt cTPivotFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotFmt = (CTPivotFmt) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPivotFmt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public void removePivotFmt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public void setPivotFmtArray(CTPivotFmt[] cTPivotFmtArr) {
        check_orphaned();
        arraySetterHelper(cTPivotFmtArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public int sizeOfPivotFmtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public CTPivotFmt getPivotFmtArray(int i) {
        CTPivotFmt cTPivotFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotFmt = (CTPivotFmt) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPivotFmt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPivotFmt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPivotFmts
    public void setPivotFmtArray(int i, CTPivotFmt cTPivotFmt) {
        generatedSetterHelperImpl(cTPivotFmt, PROPERTY_QNAME[0], i, (short) 2);
    }
}
