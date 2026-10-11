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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTColorTransformHeaderLstImpl;

/* loaded from: classes14.dex */
public class CTColorTransformHeaderLstImpl extends XmlComplexContentImpl implements CTColorTransformHeaderLst {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "colorsDefHdr")};
    private static final long serialVersionUID = 1;

    public CTColorTransformHeaderLstImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public CTColorTransformHeader addNewColorsDefHdr() {
        CTColorTransformHeader cTColorTransformHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeader = (CTColorTransformHeader) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorTransformHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public CTColorTransformHeader[] getColorsDefHdrArray() {
        return (CTColorTransformHeader[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTColorTransformHeader[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public List<CTColorTransformHeader> getColorsDefHdrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformHeaderLstImpl.this.getColorsDefHdrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z02
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorTransformHeaderLstImpl.this.setColorsDefHdrArray(((Integer) obj).intValue(), (CTColorTransformHeader) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorTransformHeaderLstImpl.this.insertNewColorsDefHdr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b12
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorTransformHeaderLstImpl.this.removeColorsDefHdr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c12
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorTransformHeaderLstImpl.this.sizeOfColorsDefHdrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public CTColorTransformHeader insertNewColorsDefHdr(int i) {
        CTColorTransformHeader cTColorTransformHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeader = (CTColorTransformHeader) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTColorTransformHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public void removeColorsDefHdr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public void setColorsDefHdrArray(CTColorTransformHeader[] cTColorTransformHeaderArr) {
        check_orphaned();
        arraySetterHelper(cTColorTransformHeaderArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public int sizeOfColorsDefHdrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public CTColorTransformHeader getColorsDefHdrArray(int i) {
        CTColorTransformHeader cTColorTransformHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeader = (CTColorTransformHeader) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTColorTransformHeader == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColorTransformHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst
    public void setColorsDefHdrArray(int i, CTColorTransformHeader cTColorTransformHeader) {
        generatedSetterHelperImpl(cTColorTransformHeader, PROPERTY_QNAME[0], i, (short) 2);
    }
}
