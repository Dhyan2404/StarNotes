package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.AnyDocument;
import org.etsi.uri.x01903.v13.AnyType;

/* loaded from: classes13.dex */
public class AnyDocumentImpl extends XmlComplexContentImpl implements AnyDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "Any")};
    private static final long serialVersionUID = 1;

    public AnyDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.AnyDocument
    public AnyType addNewAny() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.AnyDocument
    public AnyType getAny() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (anyType == null) {
                anyType = null;
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.AnyDocument
    public void setAny(AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
