package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinitionHeaderLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrLstDocument;

/* loaded from: classes14.dex */
public class LayoutDefHdrLstDocumentImpl extends XmlComplexContentImpl implements LayoutDefHdrLstDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutDefHdrLst")};
    private static final long serialVersionUID = 1;

    public LayoutDefHdrLstDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrLstDocument
    public CTDiagramDefinitionHeaderLst addNewLayoutDefHdrLst() {
        CTDiagramDefinitionHeaderLst cTDiagramDefinitionHeaderLst;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeaderLst = (CTDiagramDefinitionHeaderLst) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDiagramDefinitionHeaderLst;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrLstDocument
    public CTDiagramDefinitionHeaderLst getLayoutDefHdrLst() {
        CTDiagramDefinitionHeaderLst cTDiagramDefinitionHeaderLst;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinitionHeaderLst = (CTDiagramDefinitionHeaderLst) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDiagramDefinitionHeaderLst == null) {
                cTDiagramDefinitionHeaderLst = null;
            }
        }
        return cTDiagramDefinitionHeaderLst;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefHdrLstDocument
    public void setLayoutDefHdrLst(CTDiagramDefinitionHeaderLst cTDiagramDefinitionHeaderLst) {
        generatedSetterHelperImpl(cTDiagramDefinitionHeaderLst, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
