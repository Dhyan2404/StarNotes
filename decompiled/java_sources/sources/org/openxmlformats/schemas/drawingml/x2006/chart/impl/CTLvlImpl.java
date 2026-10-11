package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrVal;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTLvlImpl;

/* loaded from: classes14.dex */
public class CTLvlImpl extends XmlComplexContentImpl implements CTLvl {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, ExtUnits.UNIT_PT)};
    private static final long serialVersionUID = 1;

    public CTLvlImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public CTStrVal addNewPt() {
        CTStrVal cTStrVal;
        synchronized (monitor()) {
            check_orphaned();
            cTStrVal = (CTStrVal) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStrVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public CTStrVal[] getPtArray() {
        return (CTStrVal[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTStrVal[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public List<CTStrVal> getPtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cj5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLvlImpl.this.getPtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dj5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLvlImpl.this.setPtArray(((Integer) obj).intValue(), (CTStrVal) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ej5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLvlImpl.this.insertNewPt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fj5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLvlImpl.this.removePt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gj5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLvlImpl.this.sizeOfPtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public CTStrVal insertNewPt(int i) {
        CTStrVal cTStrVal;
        synchronized (monitor()) {
            check_orphaned();
            cTStrVal = (CTStrVal) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTStrVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public void removePt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public void setPtArray(CTStrVal[] cTStrValArr) {
        check_orphaned();
        arraySetterHelper(cTStrValArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public int sizeOfPtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public CTStrVal getPtArray(int i) {
        CTStrVal cTStrVal;
        synchronized (monitor()) {
            check_orphaned();
            cTStrVal = (CTStrVal) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTStrVal == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStrVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl
    public void setPtArray(int i, CTStrVal cTStrVal) {
        generatedSetterHelperImpl(cTStrVal, PROPERTY_QNAME[0], i, (short) 2);
    }
}
