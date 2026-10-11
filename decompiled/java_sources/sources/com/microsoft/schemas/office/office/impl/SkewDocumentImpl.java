package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTSkew;
import com.microsoft.schemas.office.office.SkewDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class SkewDocumentImpl extends XmlComplexContentImpl implements SkewDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "skew")};
    private static final long serialVersionUID = 1;

    public SkewDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.SkewDocument
    public CTSkew addNewSkew() {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.office.office.SkewDocument
    public CTSkew getSkew() {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSkew == null) {
                cTSkew = null;
            }
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.office.office.SkewDocument
    public void setSkew(CTSkew cTSkew) {
        generatedSetterHelperImpl(cTSkew, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
