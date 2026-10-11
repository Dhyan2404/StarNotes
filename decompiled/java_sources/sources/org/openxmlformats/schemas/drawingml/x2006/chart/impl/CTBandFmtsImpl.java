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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTBandFmtsImpl;

/* loaded from: classes14.dex */
public class CTBandFmtsImpl extends XmlComplexContentImpl implements CTBandFmts {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "bandFmt")};
    private static final long serialVersionUID = 1;

    public CTBandFmtsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public CTBandFmt addNewBandFmt() {
        CTBandFmt cTBandFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTBandFmt = (CTBandFmt) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBandFmt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public CTBandFmt[] getBandFmtArray() {
        return (CTBandFmt[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTBandFmt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public List<CTBandFmt> getBandFmtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bl0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBandFmtsImpl.this.getBandFmtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cl0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBandFmtsImpl.this.setBandFmtArray(((Integer) obj).intValue(), (CTBandFmt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dl0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBandFmtsImpl.this.insertNewBandFmt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.el0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBandFmtsImpl.this.removeBandFmt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fl0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBandFmtsImpl.this.sizeOfBandFmtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public CTBandFmt insertNewBandFmt(int i) {
        CTBandFmt cTBandFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTBandFmt = (CTBandFmt) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTBandFmt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public void removeBandFmt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public void setBandFmtArray(CTBandFmt[] cTBandFmtArr) {
        check_orphaned();
        arraySetterHelper(cTBandFmtArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public int sizeOfBandFmtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public CTBandFmt getBandFmtArray(int i) {
        CTBandFmt cTBandFmt;
        synchronized (monitor()) {
            check_orphaned();
            cTBandFmt = (CTBandFmt) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTBandFmt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBandFmt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts
    public void setBandFmtArray(int i, CTBandFmt cTBandFmt) {
        generatedSetterHelperImpl(cTBandFmt, PROPERTY_QNAME[0], i, (short) 2);
    }
}
