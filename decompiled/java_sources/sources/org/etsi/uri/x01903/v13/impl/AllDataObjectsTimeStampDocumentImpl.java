package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.AllDataObjectsTimeStampDocument;
import org.etsi.uri.x01903.v13.XAdESTimeStampType;

/* loaded from: classes13.dex */
public class AllDataObjectsTimeStampDocumentImpl extends XmlComplexContentImpl implements AllDataObjectsTimeStampDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "AllDataObjectsTimeStamp")};
    private static final long serialVersionUID = 1;

    public AllDataObjectsTimeStampDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.AllDataObjectsTimeStampDocument
    public XAdESTimeStampType addNewAllDataObjectsTimeStamp() {
        XAdESTimeStampType xAdESTimeStampType;
        synchronized (monitor()) {
            check_orphaned();
            xAdESTimeStampType = (XAdESTimeStampType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xAdESTimeStampType;
    }

    @Override // org.etsi.uri.x01903.v13.AllDataObjectsTimeStampDocument
    public XAdESTimeStampType getAllDataObjectsTimeStamp() {
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

    @Override // org.etsi.uri.x01903.v13.AllDataObjectsTimeStampDocument
    public void setAllDataObjectsTimeStamp(XAdESTimeStampType xAdESTimeStampType) {
        generatedSetterHelperImpl(xAdESTimeStampType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
