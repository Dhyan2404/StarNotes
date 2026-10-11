package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.GraphicDocument;

/* loaded from: classes14.dex */
public class GraphicDocumentImpl extends XmlComplexContentImpl implements GraphicDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "graphic")};
    private static final long serialVersionUID = 1;

    public GraphicDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.GraphicDocument
    public CTGraphicalObject addNewGraphic() {
        CTGraphicalObject cTGraphicalObject;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicalObject = (CTGraphicalObject) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGraphicalObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.GraphicDocument
    public CTGraphicalObject getGraphic() {
        CTGraphicalObject cTGraphicalObject;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicalObject = (CTGraphicalObject) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGraphicalObject == null) {
                cTGraphicalObject = null;
            }
        }
        return cTGraphicalObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.GraphicDocument
    public void setGraphic(CTGraphicalObject cTGraphicalObject) {
        generatedSetterHelperImpl(cTGraphicalObject, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
