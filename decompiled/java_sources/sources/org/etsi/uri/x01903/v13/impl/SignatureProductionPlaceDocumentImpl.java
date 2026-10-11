package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignatureProductionPlaceDocument;
import org.etsi.uri.x01903.v13.SignatureProductionPlaceType;

/* loaded from: classes13.dex */
public class SignatureProductionPlaceDocumentImpl extends XmlComplexContentImpl implements SignatureProductionPlaceDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignatureProductionPlace")};
    private static final long serialVersionUID = 1;

    public SignatureProductionPlaceDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignatureProductionPlaceDocument
    public SignatureProductionPlaceType addNewSignatureProductionPlace() {
        SignatureProductionPlaceType signatureProductionPlaceType;
        synchronized (monitor()) {
            check_orphaned();
            signatureProductionPlaceType = (SignatureProductionPlaceType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return signatureProductionPlaceType;
    }

    @Override // org.etsi.uri.x01903.v13.SignatureProductionPlaceDocument
    public SignatureProductionPlaceType getSignatureProductionPlace() {
        SignatureProductionPlaceType signatureProductionPlaceType;
        synchronized (monitor()) {
            check_orphaned();
            signatureProductionPlaceType = (SignatureProductionPlaceType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (signatureProductionPlaceType == null) {
                signatureProductionPlaceType = null;
            }
        }
        return signatureProductionPlaceType;
    }

    @Override // org.etsi.uri.x01903.v13.SignatureProductionPlaceDocument
    public void setSignatureProductionPlace(SignatureProductionPlaceType signatureProductionPlaceType) {
        generatedSetterHelperImpl(signatureProductionPlaceType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
