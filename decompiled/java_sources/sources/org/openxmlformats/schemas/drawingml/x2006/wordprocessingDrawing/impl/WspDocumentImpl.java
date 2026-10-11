package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingShape;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WspDocument;

/* loaded from: classes14.dex */
public class WspDocumentImpl extends XmlComplexContentImpl implements WspDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wsp")};
    private static final long serialVersionUID = 1;

    public WspDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WspDocument
    public CTWordprocessingShape addNewWsp() {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WspDocument
    public CTWordprocessingShape getWsp() {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTWordprocessingShape == null) {
                cTWordprocessingShape = null;
            }
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WspDocument
    public void setWsp(CTWordprocessingShape cTWordprocessingShape) {
        generatedSetterHelperImpl(cTWordprocessingShape, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
