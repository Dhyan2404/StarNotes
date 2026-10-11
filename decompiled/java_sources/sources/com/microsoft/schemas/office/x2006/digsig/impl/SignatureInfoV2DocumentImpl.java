package com.microsoft.schemas.office.x2006.digsig.impl;

import com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV2;
import com.microsoft.schemas.office.x2006.digsig.SignatureInfoV2Document;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class SignatureInfoV2DocumentImpl extends XmlComplexContentImpl implements SignatureInfoV2Document {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.MS_DIGSIG_NS, "SignatureInfoV2")};
    private static final long serialVersionUID = 1;

    public SignatureInfoV2DocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.x2006.digsig.SignatureInfoV2Document
    public CTSignatureInfoV2 addNewSignatureInfoV2() {
        CTSignatureInfoV2 cTSignatureInfoV2;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureInfoV2 = (CTSignatureInfoV2) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSignatureInfoV2;
    }

    @Override // com.microsoft.schemas.office.x2006.digsig.SignatureInfoV2Document
    public CTSignatureInfoV2 getSignatureInfoV2() {
        CTSignatureInfoV2 cTSignatureInfoV2;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureInfoV2 = (CTSignatureInfoV2) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSignatureInfoV2 == null) {
                cTSignatureInfoV2 = null;
            }
        }
        return cTSignatureInfoV2;
    }

    @Override // com.microsoft.schemas.office.x2006.digsig.SignatureInfoV2Document
    public void setSignatureInfoV2(CTSignatureInfoV2 cTSignatureInfoV2) {
        generatedSetterHelperImpl(cTSignatureInfoV2, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
