package org.openxmlformats.schemas.drawingml.x2006.lockedCanvas.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.lockedCanvas.LockedCanvasDocument;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape;

/* loaded from: classes14.dex */
public class LockedCanvasDocumentImpl extends XmlComplexContentImpl implements LockedCanvasDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/lockedCanvas", "lockedCanvas")};
    private static final long serialVersionUID = 1;

    public LockedCanvasDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.lockedCanvas.LockedCanvasDocument
    public CTGvmlGroupShape addNewLockedCanvas() {
        CTGvmlGroupShape cTGvmlGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShape = (CTGvmlGroupShape) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGvmlGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.lockedCanvas.LockedCanvasDocument
    public CTGvmlGroupShape getLockedCanvas() {
        CTGvmlGroupShape cTGvmlGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShape = (CTGvmlGroupShape) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGvmlGroupShape == null) {
                cTGvmlGroupShape = null;
            }
        }
        return cTGvmlGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.lockedCanvas.LockedCanvasDocument
    public void setLockedCanvas(CTGvmlGroupShape cTGvmlGroupShape) {
        generatedSetterHelperImpl(cTGvmlGroupShape, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
