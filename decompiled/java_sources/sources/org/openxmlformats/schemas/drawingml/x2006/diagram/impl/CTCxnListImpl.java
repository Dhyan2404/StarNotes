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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxn;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTCxnListImpl;

/* loaded from: classes14.dex */
public class CTCxnListImpl extends XmlComplexContentImpl implements CTCxnList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "cxn")};
    private static final long serialVersionUID = 1;

    public CTCxnListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public CTCxn addNewCxn() {
        CTCxn cTCxn;
        synchronized (monitor()) {
            check_orphaned();
            cTCxn = (CTCxn) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCxn;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public CTCxn[] getCxnArray() {
        return (CTCxn[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCxn[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public List<CTCxn> getCxnList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t43
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCxnListImpl.this.getCxnArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u43
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCxnListImpl.this.setCxnArray(((Integer) obj).intValue(), (CTCxn) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v43
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCxnListImpl.this.insertNewCxn(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w43
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCxnListImpl.this.removeCxn(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x43
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCxnListImpl.this.sizeOfCxnArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public CTCxn insertNewCxn(int i) {
        CTCxn cTCxn;
        synchronized (monitor()) {
            check_orphaned();
            cTCxn = (CTCxn) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCxn;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public void removeCxn(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public void setCxnArray(CTCxn[] cTCxnArr) {
        check_orphaned();
        arraySetterHelper(cTCxnArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public int sizeOfCxnArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public CTCxn getCxnArray(int i) {
        CTCxn cTCxn;
        synchronized (monitor()) {
            check_orphaned();
            cTCxn = (CTCxn) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCxn == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCxn;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList
    public void setCxnArray(int i, CTCxn cTCxn) {
        generatedSetterHelperImpl(cTCxn, PROPERTY_QNAME[0], i, (short) 2);
    }
}
