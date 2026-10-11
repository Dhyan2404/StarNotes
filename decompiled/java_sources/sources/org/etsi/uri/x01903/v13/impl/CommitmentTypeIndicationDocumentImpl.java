package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CommitmentTypeIndicationDocument;
import org.etsi.uri.x01903.v13.CommitmentTypeIndicationType;

/* loaded from: classes13.dex */
public class CommitmentTypeIndicationDocumentImpl extends XmlComplexContentImpl implements CommitmentTypeIndicationDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CommitmentTypeIndication")};
    private static final long serialVersionUID = 1;

    public CommitmentTypeIndicationDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationDocument
    public CommitmentTypeIndicationType addNewCommitmentTypeIndication() {
        CommitmentTypeIndicationType commitmentTypeIndicationType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeIndicationType = (CommitmentTypeIndicationType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return commitmentTypeIndicationType;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationDocument
    public CommitmentTypeIndicationType getCommitmentTypeIndication() {
        CommitmentTypeIndicationType commitmentTypeIndicationType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeIndicationType = (CommitmentTypeIndicationType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (commitmentTypeIndicationType == null) {
                commitmentTypeIndicationType = null;
            }
        }
        return commitmentTypeIndicationType;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationDocument
    public void setCommitmentTypeIndication(CommitmentTypeIndicationType commitmentTypeIndicationType) {
        generatedSetterHelperImpl(commitmentTypeIndicationType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
