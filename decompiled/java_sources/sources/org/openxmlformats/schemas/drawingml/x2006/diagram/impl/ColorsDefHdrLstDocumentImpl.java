package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransformHeaderLst;
import org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrLstDocument;

/* loaded from: classes14.dex */
public class ColorsDefHdrLstDocumentImpl extends XmlComplexContentImpl implements ColorsDefHdrLstDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "colorsDefHdrLst")};
    private static final long serialVersionUID = 1;

    public ColorsDefHdrLstDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrLstDocument
    public CTColorTransformHeaderLst addNewColorsDefHdrLst() {
        CTColorTransformHeaderLst cTColorTransformHeaderLst;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeaderLst = (CTColorTransformHeaderLst) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorTransformHeaderLst;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrLstDocument
    public CTColorTransformHeaderLst getColorsDefHdrLst() {
        CTColorTransformHeaderLst cTColorTransformHeaderLst;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransformHeaderLst = (CTColorTransformHeaderLst) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColorTransformHeaderLst == null) {
                cTColorTransformHeaderLst = null;
            }
        }
        return cTColorTransformHeaderLst;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefHdrLstDocument
    public void setColorsDefHdrLst(CTColorTransformHeaderLst cTColorTransformHeaderLst) {
        generatedSetterHelperImpl(cTColorTransformHeaderLst, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
