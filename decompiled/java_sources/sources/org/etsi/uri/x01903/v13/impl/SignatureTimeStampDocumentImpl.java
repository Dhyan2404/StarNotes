package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.SignatureTimeStampDocument;
import org.etsi.uri.x01903.v13.XAdESTimeStampType;

/* loaded from: classes13.dex */
public class SignatureTimeStampDocumentImpl extends XmlComplexContentImpl implements SignatureTimeStampDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SignatureTimeStamp")};
    private static final long serialVersionUID = 1;

    public SignatureTimeStampDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignatureTimeStampDocument
    public XAdESTimeStampType addNewSignatureTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignatureTimeStampDocument
    public XAdESTimeStampType getSignatureTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (xAdESTimeStampType == null) {
                xAdESTimeStampType = null;
            }
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.SignatureTimeStampDocument
    public void setSignatureTimeStamp(XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
