package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignerRoleDocument;
import org.etsi.uri.x01903.v13.SignerRoleType;

/* loaded from: classes13.dex */
public class SignerRoleDocumentImpl extends XmlComplexContentImpl implements SignerRoleDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignerRole")};
    private static final long serialVersionUID = 1;

    public SignerRoleDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignerRoleDocument
    public SignerRoleType addNewSignerRole() {
        SignerRoleType signerRoleType;
        synchronized (monitor()) {
            check_orphaned();
            signerRoleType = (SignerRoleType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signerRoleType;
    }

    @Override // org.etsi.uri.x01903.v13.SignerRoleDocument
    public SignerRoleType getSignerRole() {
        SignerRoleType signerRoleType;
        synchronized (monitor()) {
            check_orphaned();
            signerRoleType = (SignerRoleType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signerRoleType == null) {
                signerRoleType = null;
            }
        }
        return signerRoleType;
    }

    @Override // org.etsi.uri.x01903.v13.SignerRoleDocument
    public void setSignerRole(SignerRoleType signerRoleType) {
        generatedSetterHelperImpl(signerRoleType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
