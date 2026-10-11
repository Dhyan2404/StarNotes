package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.AnchorDocument;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTAnchor;

/* loaded from: classes14.dex */
public class AnchorDocumentImpl extends XmlComplexContentImpl implements AnchorDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", Constants.ELEMNAME_ANCHOR_STRING)};
    private static final long serialVersionUID = 1;

    public AnchorDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.AnchorDocument
    public CTAnchor addNewAnchor() {
        CTAnchor cTAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchor = (CTAnchor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.AnchorDocument
    public CTAnchor getAnchor() {
        CTAnchor cTAnchor;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchor = (CTAnchor) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAnchor == null) {
                cTAnchor = null;
            }
        }
        return cTAnchor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.AnchorDocument
    public void setAnchor(CTAnchor cTAnchor) {
        generatedSetterHelperImpl(cTAnchor, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
