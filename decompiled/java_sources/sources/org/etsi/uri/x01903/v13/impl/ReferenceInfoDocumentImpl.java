package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.ReferenceInfoDocument;
import org.etsi.uri.x01903.v13.ReferenceInfoType;

/* loaded from: classes13.dex */
public class ReferenceInfoDocumentImpl extends XmlComplexContentImpl implements ReferenceInfoDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "ReferenceInfo")};
    private static final long serialVersionUID = 1;

    public ReferenceInfoDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.ReferenceInfoDocument
    public ReferenceInfoType addNewReferenceInfo() {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.ReferenceInfoDocument
    public ReferenceInfoType getReferenceInfo() {
        ReferenceInfoType referenceInfoType;
        synchronized (monitor()) {
            check_orphaned();
            referenceInfoType = (ReferenceInfoType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (referenceInfoType == null) {
                referenceInfoType = null;
            }
        }
        return referenceInfoType;
    }

    @Override // org.etsi.uri.x01903.v13.ReferenceInfoDocument
    public void setReferenceInfo(ReferenceInfoType referenceInfoType) {
        generatedSetterHelperImpl(referenceInfoType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
