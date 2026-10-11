package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrDocument;

/* loaded from: classes14.dex */
public class LayoutDefHdrDocumentImpl extends XmlComplexContentImpl implements LayoutDefHdrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutDefHdr")};
    private static final long serialVersionUID = 1;

    public LayoutDefHdrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrDocument
    public CTDiagramDefinitionHeader addNewLayoutDefHdr() {
        CTDiagramDefinitionHeader cTDiagramDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeader = (CTDiagramDefinitionHeader) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDiagramDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrDocument
    public CTDiagramDefinitionHeader getLayoutDefHdr() {
        CTDiagramDefinitionHeader cTDiagramDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeader = (CTDiagramDefinitionHeader) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDiagramDefinitionHeader == null) {
                cTDiagramDefinitionHeader = null;
            }
        }
        return cTDiagramDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrDocument
    public void setLayoutDefHdr(CTDiagramDefinitionHeader cTDiagramDefinitionHeader) {
        generatedSetterHelperImpl(cTDiagramDefinitionHeader, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
