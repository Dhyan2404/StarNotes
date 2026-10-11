package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColorTransform;
import org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefDocument;

/* loaded from: classes14.dex */
public class ColorsDefDocumentImpl extends XmlComplexContentImpl implements ColorsDefDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "colorsDef")};
    private static final long serialVersionUID = 1;

    public ColorsDefDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefDocument
    public CTColorTransform addNewColorsDef() {
        CTColorTransform cTColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransform = (CTColorTransform) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefDocument
    public CTColorTransform getColorsDef() {
        CTColorTransform cTColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTColorTransform = (CTColorTransform) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTColorTransform == null) {
                cTColorTransform = null;
            }
        }
        return cTColorTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.ColorsDefDocument
    public void setColorsDef(CTColorTransform cTColorTransform) {
        generatedSetterHelperImpl(cTColorTransform, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
