package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.RefsOnlyTimeStampDocument;
import org.etsi.uri.x01903.v13.XAdESTimeStampType;

/* loaded from: classes13.dex */
public class RefsOnlyTimeStampDocumentImpl extends XmlComplexContentImpl implements RefsOnlyTimeStampDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "RefsOnlyTimeStamp")};
    private static final long serialVersionUID = 1;

    public RefsOnlyTimeStampDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.RefsOnlyTimeStampDocument
    public XAdESTimeStampType addNewRefsOnlyTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.RefsOnlyTimeStampDocument
    public XAdESTimeStampType getRefsOnlyTimeStamp() {
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

    @Override // org.etsi.uri.x01903.v13.RefsOnlyTimeStampDocument
    public void setRefsOnlyTimeStamp(XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
