package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDiagramDefinition;
import org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefDocument;

/* loaded from: classes14.dex */
public class LayoutDefDocumentImpl extends XmlComplexContentImpl implements LayoutDefDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutDef")};
    private static final long serialVersionUID = 1;

    public LayoutDefDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefDocument
    public CTDiagramDefinition addNewLayoutDef() {
        CTDiagramDefinition cTDiagramDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinition = (CTDiagramDefinition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDiagramDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefDocument
    public CTDiagramDefinition getLayoutDef() {
        CTDiagramDefinition cTDiagramDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagramDefinition = (CTDiagramDefinition) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDiagramDefinition == null) {
                cTDiagramDefinition = null;
            }
        }
        return cTDiagramDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.LayoutDefDocument
    public void setLayoutDef(CTDiagramDefinition cTDiagramDefinition) {
        generatedSetterHelperImpl(cTDiagramDefinition, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
