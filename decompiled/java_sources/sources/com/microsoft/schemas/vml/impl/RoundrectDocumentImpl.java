package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTRoundRect;
import com.microsoft.schemas.vml.RoundrectDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class RoundrectDocumentImpl extends XmlComplexContentImpl implements RoundrectDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "roundrect")};
    private static final long serialVersionUID = 1;

    public RoundrectDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.RoundrectDocument
    public CTRoundRect addNewRoundrect() {
        CTRoundRect cTRoundRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRoundRect = (CTRoundRect) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRoundRect;
    }

    @Override // com.microsoft.schemas.vml.RoundrectDocument
    public CTRoundRect getRoundrect() {
        CTRoundRect cTRoundRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRoundRect = (CTRoundRect) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRoundRect == null) {
                cTRoundRect = null;
            }
        }
        return cTRoundRect;
    }

    @Override // com.microsoft.schemas.vml.RoundrectDocument
    public void setRoundrect(CTRoundRect cTRoundRect) {
        generatedSetterHelperImpl(cTRoundRect, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
