package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.DigestMethodDocument;
import org.p120w3.x2000.x09.xmldsig.DigestMethodType;

/* loaded from: classes16.dex */
public class DigestMethodDocumentImpl extends XmlComplexContentImpl implements DigestMethodDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "DigestMethod")};
    private static final long serialVersionUID = 1;

    public DigestMethodDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DigestMethodDocument
    public DigestMethodType addNewDigestMethod() {
        DigestMethodType digestMethodType;
        synchronized (monitor()) {
            check_orphaned();
            digestMethodType = (DigestMethodType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return digestMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DigestMethodDocument
    public DigestMethodType getDigestMethod() {
        DigestMethodType digestMethodType;
        synchronized (monitor()) {
            check_orphaned();
            digestMethodType = (DigestMethodType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (digestMethodType == null) {
                digestMethodType = null;
            }
        }
        return digestMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DigestMethodDocument
    public void setDigestMethod(DigestMethodType digestMethodType) {
        generatedSetterHelperImpl(digestMethodType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
