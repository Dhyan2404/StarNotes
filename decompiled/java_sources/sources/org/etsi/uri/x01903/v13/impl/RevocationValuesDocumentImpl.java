package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.RevocationValuesDocument;
import org.etsi.uri.x01903.v13.RevocationValuesType;

/* loaded from: classes13.dex */
public class RevocationValuesDocumentImpl extends XmlComplexContentImpl implements RevocationValuesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "RevocationValues")};
    private static final long serialVersionUID = 1;

    public RevocationValuesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesDocument
    public RevocationValuesType addNewRevocationValues() {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesDocument
    public RevocationValuesType getRevocationValues() {
        RevocationValuesType revocationValuesType;
        synchronized (monitor()) {
            check_orphaned();
            revocationValuesType = (RevocationValuesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (revocationValuesType == null) {
                revocationValuesType = null;
            }
        }
        return revocationValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesDocument
    public void setRevocationValues(RevocationValuesType revocationValuesType) {
        generatedSetterHelperImpl(revocationValuesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
