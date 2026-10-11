package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CounterSignatureDocument;
import org.etsi.uri.x01903.v13.CounterSignatureType;

/* loaded from: classes13.dex */
public class CounterSignatureDocumentImpl extends XmlComplexContentImpl implements CounterSignatureDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CounterSignature")};
    private static final long serialVersionUID = 1;

    public CounterSignatureDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CounterSignatureDocument
    public CounterSignatureType addNewCounterSignature() {
        CounterSignatureType counterSignatureType;
        synchronized (monitor()) {
            check_orphaned();
            counterSignatureType = (CounterSignatureType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return counterSignatureType;
    }

    @Override // org.etsi.uri.x01903.v13.CounterSignatureDocument
    public CounterSignatureType getCounterSignature() {
        CounterSignatureType counterSignatureType;
        synchronized (monitor()) {
            check_orphaned();
            counterSignatureType = (CounterSignatureType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (counterSignatureType == null) {
                counterSignatureType = null;
            }
        }
        return counterSignatureType;
    }

    @Override // org.etsi.uri.x01903.v13.CounterSignatureDocument
    public void setCounterSignature(CounterSignatureType counterSignatureType) {
        generatedSetterHelperImpl(counterSignatureType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
