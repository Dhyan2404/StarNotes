package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.ArcDocument;
import com.microsoft.schemas.vml.CTArc;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ArcDocumentImpl extends XmlComplexContentImpl implements ArcDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "arc")};
    private static final long serialVersionUID = 1;

    public ArcDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.ArcDocument
    public CTArc addNewArc() {
        CTArc cTArc;
        synchronized (monitor()) {
            check_orphaned();
            cTArc = (CTArc) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTArc;
    }

    @Override // com.microsoft.schemas.vml.ArcDocument
    public CTArc getArc() {
        CTArc cTArc;
        synchronized (monitor()) {
            check_orphaned();
            cTArc = (CTArc) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTArc == null) {
                cTArc = null;
            }
        }
        return cTArc;
    }

    @Override // com.microsoft.schemas.vml.ArcDocument
    public void setArc(CTArc cTArc) {
        generatedSetterHelperImpl(cTArc, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
