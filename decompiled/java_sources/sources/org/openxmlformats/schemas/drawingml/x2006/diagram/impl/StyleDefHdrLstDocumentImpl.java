package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTStyleDefinitionHeaderLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrLstDocument;

/* loaded from: classes14.dex */
public class StyleDefHdrLstDocumentImpl extends XmlComplexContentImpl implements StyleDefHdrLstDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "styleDefHdrLst")};
    private static final long serialVersionUID = 1;

    public StyleDefHdrLstDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrLstDocument
    public CTStyleDefinitionHeaderLst addNewStyleDefHdrLst() {
        CTStyleDefinitionHeaderLst cTStyleDefinitionHeaderLst;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeaderLst = (CTStyleDefinitionHeaderLst) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStyleDefinitionHeaderLst;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrLstDocument
    public CTStyleDefinitionHeaderLst getStyleDefHdrLst() {
        CTStyleDefinitionHeaderLst cTStyleDefinitionHeaderLst;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleDefinitionHeaderLst = (CTStyleDefinitionHeaderLst) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStyleDefinitionHeaderLst == null) {
                cTStyleDefinitionHeaderLst = null;
            }
        }
        return cTStyleDefinitionHeaderLst;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.StyleDefHdrLstDocument
    public void setStyleDefHdrLst(CTStyleDefinitionHeaderLst cTStyleDefinitionHeaderLst) {
        generatedSetterHelperImpl(cTStyleDefinitionHeaderLst, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
