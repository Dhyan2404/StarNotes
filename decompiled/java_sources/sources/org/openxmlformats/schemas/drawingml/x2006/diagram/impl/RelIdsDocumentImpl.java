package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTRelIds;
import org.openxmlformats.schemas.drawingml.x2006.diagram.RelIdsDocument;

/* loaded from: classes14.dex */
public class RelIdsDocumentImpl extends XmlComplexContentImpl implements RelIdsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "relIds")};
    private static final long serialVersionUID = 1;

    public RelIdsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.RelIdsDocument
    public CTRelIds addNewRelIds() {
        CTRelIds cTRelIds;
        synchronized (monitor()) {
            check_orphaned();
            cTRelIds = (CTRelIds) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelIds;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.RelIdsDocument
    public CTRelIds getRelIds() {
        CTRelIds cTRelIds;
        synchronized (monitor()) {
            check_orphaned();
            cTRelIds = (CTRelIds) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelIds == null) {
                cTRelIds = null;
            }
        }
        return cTRelIds;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.RelIdsDocument
    public void setRelIds(CTRelIds cTRelIds) {
        generatedSetterHelperImpl(cTRelIds, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
