package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeader;
import org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrDocument;

/* loaded from: classes14.dex */
public class StyleDefHdrDocumentImpl extends XmlComplexContentImpl implements StyleDefHdrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleDefHdr")};
    private static final long serialVersionUID = 1;

    public StyleDefHdrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrDocument
    public CTStyleDefinitionHeader addNewStyleDefHdr() {
        CTStyleDefinitionHeader cTStyleDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeader = (CTStyleDefinitionHeader) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStyleDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrDocument
    public CTStyleDefinitionHeader getStyleDefHdr() {
        CTStyleDefinitionHeader cTStyleDefinitionHeader;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeader = (CTStyleDefinitionHeader) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStyleDefinitionHeader == null) {
                cTStyleDefinitionHeader = null;
            }
        }
        return cTStyleDefinitionHeader;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrDocument
    public void setStyleDefHdr(CTStyleDefinitionHeader cTStyleDefinitionHeader) {
        generatedSetterHelperImpl(cTStyleDefinitionHeader, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
