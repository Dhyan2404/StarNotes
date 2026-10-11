package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.RetrievalMethodDocument;
import org.p120w3.x2000.x09.xmldsig.RetrievalMethodType;

/* loaded from: classes16.dex */
public class RetrievalMethodDocumentImpl extends XmlComplexContentImpl implements RetrievalMethodDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "RetrievalMethod")};
    private static final long serialVersionUID = 1;

    public RetrievalMethodDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RetrievalMethodDocument
    public RetrievalMethodType addNewRetrievalMethod() {
        RetrievalMethodType retrievalMethodType;
        synchronized (monitor()) {
            check_orphaned();
            retrievalMethodType = (RetrievalMethodType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return retrievalMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RetrievalMethodDocument
    public RetrievalMethodType getRetrievalMethod() {
        RetrievalMethodType retrievalMethodType;
        synchronized (monitor()) {
            check_orphaned();
            retrievalMethodType = (RetrievalMethodType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (retrievalMethodType == null) {
                retrievalMethodType = null;
            }
        }
        return retrievalMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RetrievalMethodDocument
    public void setRetrievalMethod(RetrievalMethodType retrievalMethodType) {
        generatedSetterHelperImpl(retrievalMethodType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
