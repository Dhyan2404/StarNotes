package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTShadow;
import com.microsoft.schemas.vml.ShadowDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ShadowDocumentImpl extends XmlComplexContentImpl implements ShadowDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "shadow")};
    private static final long serialVersionUID = 1;

    public ShadowDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.ShadowDocument
    public CTShadow addNewShadow() {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.vml.ShadowDocument
    public CTShadow getShadow() {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTShadow == null) {
                cTShadow = null;
            }
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.vml.ShadowDocument
    public void setShadow(CTShadow cTShadow) {
        generatedSetterHelperImpl(cTShadow, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
