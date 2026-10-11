package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdj;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTAdjLstImpl;

/* loaded from: classes14.dex */
public class CTAdjLstImpl extends XmlComplexContentImpl implements CTAdjLst {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "adj")};
    private static final long serialVersionUID = 1;

    public CTAdjLstImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public CTAdj addNewAdj() {
        CTAdj cTAdj;
        synchronized (monitor()) {
            check_orphaned();
            cTAdj = (CTAdj) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAdj;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public CTAdj[] getAdjArray() {
        return (CTAdj[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAdj[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public List<CTAdj> getAdjList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdjLstImpl.this.getAdjArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o30
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAdjLstImpl.this.setAdjArray(((Integer) obj).intValue(), (CTAdj) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p30
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAdjLstImpl.this.insertNewAdj(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q30
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAdjLstImpl.this.removeAdj(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r30
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAdjLstImpl.this.sizeOfAdjArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public CTAdj insertNewAdj(int i) {
        CTAdj cTAdj;
        synchronized (monitor()) {
            check_orphaned();
            cTAdj = (CTAdj) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAdj;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public void removeAdj(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public void setAdjArray(CTAdj[] cTAdjArr) {
        check_orphaned();
        arraySetterHelper(cTAdjArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public int sizeOfAdjArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public CTAdj getAdjArray(int i) {
        CTAdj cTAdj;
        synchronized (monitor()) {
            check_orphaned();
            cTAdj = (CTAdj) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAdj == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAdj;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTAdjLst
    public void setAdjArray(int i, CTAdj cTAdj) {
        generatedSetterHelperImpl(cTAdj, PROPERTY_QNAME[0], i, (short) 2);
    }
}
