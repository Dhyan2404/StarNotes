package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTRect;
import com.microsoft.schemas.vml.RectDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class RectDocumentImpl extends XmlComplexContentImpl implements RectDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "rect")};
    private static final long serialVersionUID = 1;

    public RectDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.RectDocument
    public CTRect addNewRect() {
        CTRect cTRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRect = (CTRect) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRect;
    }

    @Override // com.microsoft.schemas.vml.RectDocument
    public CTRect getRect() {
        CTRect cTRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRect = (CTRect) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRect == null) {
                cTRect = null;
            }
        }
        return cTRect;
    }

    @Override // com.microsoft.schemas.vml.RectDocument
    public void setRect(CTRect cTRect) {
        generatedSetterHelperImpl(cTRect, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
