package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTInline;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.InlineDocument;

/* loaded from: classes14.dex */
public class InlineDocumentImpl extends XmlComplexContentImpl implements InlineDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "inline")};
    private static final long serialVersionUID = 1;

    public InlineDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.InlineDocument
    public CTInline addNewInline() {
        CTInline cTInline;
        synchronized (monitor()) {
            check_orphaned();
            cTInline = (CTInline) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTInline;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.InlineDocument
    public CTInline getInline() {
        CTInline cTInline;
        synchronized (monitor()) {
            check_orphaned();
            cTInline = (CTInline) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTInline == null) {
                cTInline = null;
            }
        }
        return cTInline;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.InlineDocument
    public void setInline(CTInline cTInline) {
        generatedSetterHelperImpl(cTInline, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
