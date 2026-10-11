package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTStroke;
import com.microsoft.schemas.vml.StrokeDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class StrokeDocumentImpl extends XmlComplexContentImpl implements StrokeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "stroke")};
    private static final long serialVersionUID = 1;

    public StrokeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.StrokeDocument
    public CTStroke addNewStroke() {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.vml.StrokeDocument
    public CTStroke getStroke() {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStroke == null) {
                cTStroke = null;
            }
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.vml.StrokeDocument
    public void setStroke(CTStroke cTStroke) {
        generatedSetterHelperImpl(cTStroke, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
