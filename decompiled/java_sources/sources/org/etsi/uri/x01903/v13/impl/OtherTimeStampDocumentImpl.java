package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.OtherTimeStampDocument;
import org.etsi.uri.x01903.v13.OtherTimeStampType;

/* loaded from: classes13.dex */
public class OtherTimeStampDocumentImpl extends XmlComplexContentImpl implements OtherTimeStampDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "OtherTimeStamp")};
    private static final long serialVersionUID = 1;

    public OtherTimeStampDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.OtherTimeStampDocument
    public OtherTimeStampType addNewOtherTimeStamp() {
        OtherTimeStampType otherTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            otherTimeStampType = (OtherTimeStampType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return otherTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherTimeStampDocument
    public OtherTimeStampType getOtherTimeStamp() {
        OtherTimeStampType otherTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            otherTimeStampType = (OtherTimeStampType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (otherTimeStampType == null) {
                otherTimeStampType = null;
            }
        }
        return otherTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.OtherTimeStampDocument
    public void setOtherTimeStamp(OtherTimeStampType otherTimeStampType) {
        generatedSetterHelperImpl(otherTimeStampType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
