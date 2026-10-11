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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTStyleDefinitionHeaderLstImpl;

/* loaded from: classes14.dex */
public class CTStyleDefinitionHeaderLstImpl extends XmlComplexContentImpl implements CTStyleDefinitionHeaderLst {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleDefHdr")};
    private static final long serialVersionUID = 1;

    public CTStyleDefinitionHeaderLstImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public CTStyleDefinitionHeader addNewStyleDefHdr() {
        CTStyleDefinitionHeader cTStyleDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeader = (CTStyleDefinitionHeader) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStyleDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public CTStyleDefinitionHeader[] getStyleDefHdrArray() {
        return (CTStyleDefinitionHeader[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTStyleDefinitionHeader[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public List<CTStyleDefinitionHeader> getStyleDefHdrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionHeaderLstImpl.this.getStyleDefHdrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v4c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStyleDefinitionHeaderLstImpl.this.setStyleDefHdrArray(((Integer) obj).intValue(), (CTStyleDefinitionHeader) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w4c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStyleDefinitionHeaderLstImpl.this.insertNewStyleDefHdr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x4c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStyleDefinitionHeaderLstImpl.this.removeStyleDefHdr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y4c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStyleDefinitionHeaderLstImpl.this.sizeOfStyleDefHdrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public CTStyleDefinitionHeader insertNewStyleDefHdr(int i) {
        CTStyleDefinitionHeader cTStyleDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeader = (CTStyleDefinitionHeader) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTStyleDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public void removeStyleDefHdr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public void setStyleDefHdrArray(CTStyleDefinitionHeader[] cTStyleDefinitionHeaderArr) {
        check_orphaned();
        arraySetterHelper(cTStyleDefinitionHeaderArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public int sizeOfStyleDefHdrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public CTStyleDefinitionHeader getStyleDefHdrArray(int i) {
        CTStyleDefinitionHeader cTStyleDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeader = (CTStyleDefinitionHeader) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTStyleDefinitionHeader == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStyleDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst
    public void setStyleDefHdrArray(int i, CTStyleDefinitionHeader cTStyleDefinitionHeader) {
        generatedSetterHelperImpl(cTStyleDefinitionHeader, PROPERTY_QNAME[0], i, (short) 2);
    }
}
