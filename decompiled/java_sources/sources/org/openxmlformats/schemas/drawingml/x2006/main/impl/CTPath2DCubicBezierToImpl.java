package org.openxmlformats.schemas.drawingml.x2006.main.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTPath2DCubicBezierToImpl;

/* loaded from: classes14.dex */
public class CTPath2DCubicBezierToImpl extends XmlComplexContentImpl implements CTPath2DCubicBezierTo {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, ExtUnits.UNIT_PT)};
    private static final long serialVersionUID = 1;

    public CTPath2DCubicBezierToImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public CTAdjPoint2D addNewPt() {
        CTAdjPoint2D cTAdjPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTAdjPoint2D = (CTAdjPoint2D) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAdjPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public CTAdjPoint2D[] getPtArray() {
        return (CTAdjPoint2D[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAdjPoint2D[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public List<CTAdjPoint2D> getPtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DCubicBezierToImpl.this.getPtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g47
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DCubicBezierToImpl.this.setPtArray(((Integer) obj).intValue(), (CTAdjPoint2D) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DCubicBezierToImpl.this.insertNewPt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i47
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DCubicBezierToImpl.this.removePt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j47
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DCubicBezierToImpl.this.sizeOfPtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public CTAdjPoint2D insertNewPt(int i) {
        CTAdjPoint2D cTAdjPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTAdjPoint2D = (CTAdjPoint2D) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAdjPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public void removePt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public void setPtArray(CTAdjPoint2D[] cTAdjPoint2DArr) {
        check_orphaned();
        arraySetterHelper(cTAdjPoint2DArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public int sizeOfPtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public CTAdjPoint2D getPtArray(int i) {
        CTAdjPoint2D cTAdjPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTAdjPoint2D = (CTAdjPoint2D) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAdjPoint2D == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAdjPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo
    public void setPtArray(int i, CTAdjPoint2D cTAdjPoint2D) {
        generatedSetterHelperImpl(cTAdjPoint2D, PROPERTY_QNAME[0], i, (short) 2);
    }
}
