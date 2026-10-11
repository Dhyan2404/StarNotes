package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SPUserNoticeDocument;
import org.etsi.uri.x01903.v13.SPUserNoticeType;

/* loaded from: classes13.dex */
public class SPUserNoticeDocumentImpl extends XmlComplexContentImpl implements SPUserNoticeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SPUserNotice")};
    private static final long serialVersionUID = 1;

    public SPUserNoticeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SPUserNoticeDocument
    public SPUserNoticeType addNewSPUserNotice() {
        SPUserNoticeType sPUserNoticeType;
        synchronized (monitor()) {
            check_orphaned();
            sPUserNoticeType = (SPUserNoticeType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return sPUserNoticeType;
    }

    @Override // org.etsi.uri.x01903.v13.SPUserNoticeDocument
    public SPUserNoticeType getSPUserNotice() {
        SPUserNoticeType sPUserNoticeType;
        synchronized (monitor()) {
            check_orphaned();
            sPUserNoticeType = (SPUserNoticeType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (sPUserNoticeType == null) {
                sPUserNoticeType = null;
            }
        }
        return sPUserNoticeType;
    }

    @Override // org.etsi.uri.x01903.v13.SPUserNoticeDocument
    public void setSPUserNotice(SPUserNoticeType sPUserNoticeType) {
        generatedSetterHelperImpl(sPUserNoticeType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
