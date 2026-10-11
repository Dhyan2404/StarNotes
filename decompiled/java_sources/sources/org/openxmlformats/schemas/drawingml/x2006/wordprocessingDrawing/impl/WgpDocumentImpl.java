package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WgpDocument;

/* loaded from: classes14.dex */
public class WgpDocumentImpl extends XmlComplexContentImpl implements WgpDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wgp")};
    private static final long serialVersionUID = 1;

    public WgpDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WgpDocument
    public CTWordprocessingGroup addNewWgp() {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WgpDocument
    public CTWordprocessingGroup getWgp() {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTWordprocessingGroup == null) {
                cTWordprocessingGroup = null;
            }
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.WgpDocument
    public void setWgp(CTWordprocessingGroup cTWordprocessingGroup) {
        generatedSetterHelperImpl(cTWordprocessingGroup, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
