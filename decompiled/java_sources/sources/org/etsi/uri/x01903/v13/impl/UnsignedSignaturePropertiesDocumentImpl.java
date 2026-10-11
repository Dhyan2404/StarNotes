package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesDocument;
import org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesType;

/* loaded from: classes13.dex */
public class UnsignedSignaturePropertiesDocumentImpl extends XmlComplexContentImpl implements UnsignedSignaturePropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "UnsignedSignatureProperties")};
    private static final long serialVersionUID = 1;

    public UnsignedSignaturePropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesDocument
    public UnsignedSignaturePropertiesType addNewUnsignedSignatureProperties() {
        UnsignedSignaturePropertiesType unsignedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedSignaturePropertiesType = (UnsignedSignaturePropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return unsignedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesDocument
    public UnsignedSignaturePropertiesType getUnsignedSignatureProperties() {
        UnsignedSignaturePropertiesType unsignedSignaturePropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedSignaturePropertiesType = (UnsignedSignaturePropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (unsignedSignaturePropertiesType == null) {
                unsignedSignaturePropertiesType = null;
            }
        }
        return unsignedSignaturePropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedSignaturePropertiesDocument
    public void setUnsignedSignatureProperties(UnsignedSignaturePropertiesType unsignedSignaturePropertiesType) {
        generatedSetterHelperImpl(unsignedSignaturePropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
