package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinition;
import org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefDocument;

/* loaded from: classes14.dex */
public class StyleDefDocumentImpl extends XmlComplexContentImpl implements StyleDefDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleDef")};
    private static final long serialVersionUID = 1;

    public StyleDefDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefDocument
    public CTStyleDefinition addNewStyleDef() {
        CTStyleDefinition cTStyleDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinition = (CTStyleDefinition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStyleDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefDocument
    public CTStyleDefinition getStyleDef() {
        CTStyleDefinition cTStyleDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinition = (CTStyleDefinition) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStyleDefinition == null) {
                cTStyleDefinition = null;
            }
        }
        return cTStyleDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefDocument
    public void setStyleDef(CTStyleDefinition cTStyleDefinition) {
        generatedSetterHelperImpl(cTStyleDefinition, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
