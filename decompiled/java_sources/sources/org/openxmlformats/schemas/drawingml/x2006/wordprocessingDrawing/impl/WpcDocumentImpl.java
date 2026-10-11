package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WpcDocument;

/* loaded from: classes14.dex */
public class WpcDocumentImpl extends XmlComplexContentImpl implements WpcDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wpc")};
    private static final long serialVersionUID = 1;

    public WpcDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WpcDocument
    public CTWordprocessingCanvas addNewWpc() {
        CTWordprocessingCanvas cTWordprocessingCanvas;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingCanvas = (CTWordprocessingCanvas) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWordprocessingCanvas;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WpcDocument
    public CTWordprocessingCanvas getWpc() {
        CTWordprocessingCanvas cTWordprocessingCanvas;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingCanvas = (CTWordprocessingCanvas) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTWordprocessingCanvas == null) {
                cTWordprocessingCanvas = null;
            }
        }
        return cTWordprocessingCanvas;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WpcDocument
    public void setWpc(CTWordprocessingCanvas cTWordprocessingCanvas) {
        generatedSetterHelperImpl(cTWordprocessingCanvas, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
