package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTSignatureLine;
import com.microsoft.schemas.office.office.SignaturelineDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class SignaturelineDocumentImpl extends XmlComplexContentImpl implements SignaturelineDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "signatureline")};
    private static final long serialVersionUID = 1;

    public SignaturelineDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.SignaturelineDocument
    public CTSignatureLine addNewSignatureline() {
        CTSignatureLine cTSignatureLine;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureLine = (CTSignatureLine) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSignatureLine;
    }

    @Override // com.microsoft.schemas.office.office.SignaturelineDocument
    public CTSignatureLine getSignatureline() {
        CTSignatureLine cTSignatureLine;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureLine = (CTSignatureLine) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSignatureLine == null) {
                cTSignatureLine = null;
            }
        }
        return cTSignatureLine;
    }

    @Override // com.microsoft.schemas.office.office.SignaturelineDocument
    public void setSignatureline(CTSignatureLine cTSignatureLine) {
        generatedSetterHelperImpl(cTSignatureLine, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
