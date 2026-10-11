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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTDiagramDefinitionHeaderLstImpl;

/* loaded from: classes14.dex */
public class CTDiagramDefinitionHeaderLstImpl extends XmlComplexContentImpl implements CTDiagramDefinitionHeaderLst {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutDefHdr")};
    private static final long serialVersionUID = 1;

    public CTDiagramDefinitionHeaderLstImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public CTDiagramDefinitionHeader addNewLayoutDefHdr() {
        CTDiagramDefinitionHeader cTDiagramDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeader = (CTDiagramDefinitionHeader) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDiagramDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public CTDiagramDefinitionHeader[] getLayoutDefHdrArray() {
        return (CTDiagramDefinitionHeader[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDiagramDefinitionHeader[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public List<CTDiagramDefinitionHeader> getLayoutDefHdrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionHeaderLstImpl.this.getLayoutDefHdrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r73
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDiagramDefinitionHeaderLstImpl.this.setLayoutDefHdrArray(((Integer) obj).intValue(), (CTDiagramDefinitionHeader) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s73
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDiagramDefinitionHeaderLstImpl.this.insertNewLayoutDefHdr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t73
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDiagramDefinitionHeaderLstImpl.this.removeLayoutDefHdr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u73
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDiagramDefinitionHeaderLstImpl.this.sizeOfLayoutDefHdrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public CTDiagramDefinitionHeader insertNewLayoutDefHdr(int i) {
        CTDiagramDefinitionHeader cTDiagramDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeader = (CTDiagramDefinitionHeader) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDiagramDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public void removeLayoutDefHdr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public void setLayoutDefHdrArray(CTDiagramDefinitionHeader[] cTDiagramDefinitionHeaderArr) {
        check_orphaned();
        arraySetterHelper(cTDiagramDefinitionHeaderArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public int sizeOfLayoutDefHdrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public CTDiagramDefinitionHeader getLayoutDefHdrArray(int i) {
        CTDiagramDefinitionHeader cTDiagramDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeader = (CTDiagramDefinitionHeader) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDiagramDefinitionHeader == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDiagramDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst
    public void setLayoutDefHdrArray(int i, CTDiagramDefinitionHeader cTDiagramDefinitionHeader) {
        generatedSetterHelperImpl(cTDiagramDefinitionHeader, PROPERTY_QNAME[0], i, (short) 2);
    }
}
