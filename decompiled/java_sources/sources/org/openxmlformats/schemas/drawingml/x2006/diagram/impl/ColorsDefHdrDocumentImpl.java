package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrDocument;

/* loaded from: classes14.dex */
public class ColorsDefHdrDocumentImpl extends XmlComplexContentImpl implements ColorsDefHdrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "colorsDefHdr")};
    private static final long serialVersionUID = 1;

    public ColorsDefHdrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrDocument
    public CTColorTransformHeader addNewColorsDefHdr() {
        CTColorTransformHeader cTColorTransformHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeader = (CTColorTransformHeader) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorTransformHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrDocument
    public CTColorTransformHeader getColorsDefHdr() {
        CTColorTransformHeader cTColorTransformHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeader = (CTColorTransformHeader) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColorTransformHeader == null) {
                cTColorTransformHeader = null;
            }
        }
        return cTColorTransformHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrDocument
    public void setColorsDefHdr(CTColorTransformHeader cTColorTransformHeader) {
        generatedSetterHelperImpl(cTColorTransformHeader, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
