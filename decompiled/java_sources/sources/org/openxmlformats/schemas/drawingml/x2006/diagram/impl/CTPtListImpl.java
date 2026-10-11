package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPt;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTPtListImpl;

/* loaded from: classes14.dex */
public class CTPtListImpl extends XmlComplexContentImpl implements CTPtList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, ExtUnits.UNIT_PT)};
    private static final long serialVersionUID = 1;

    public CTPtListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public CTPt addNewPt() {
        CTPt cTPt;
        synchronized (monitor()) {
            check_orphaned();
            cTPt = (CTPt) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public CTPt[] getPtArray() {
        return (CTPt[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public List<CTPt> getPtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uo7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPtListImpl.this.getPtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vo7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPtListImpl.this.setPtArray(((Integer) obj).intValue(), (CTPt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wo7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPtListImpl.this.insertNewPt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xo7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPtListImpl.this.removePt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yo7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPtListImpl.this.sizeOfPtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public CTPt insertNewPt(int i) {
        CTPt cTPt;
        synchronized (monitor()) {
            check_orphaned();
            cTPt = (CTPt) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public void removePt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public void setPtArray(CTPt[] cTPtArr) {
        check_orphaned();
        arraySetterHelper(cTPtArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public int sizeOfPtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public CTPt getPtArray(int i) {
        CTPt cTPt;
        synchronized (monitor()) {
            check_orphaned();
            cTPt = (CTPt) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList
    public void setPtArray(int i, CTPt cTPt) {
        generatedSetterHelperImpl(cTPt, PROPERTY_QNAME[0], i, (short) 2);
    }
}
