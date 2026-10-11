package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.UnsignedPropertiesDocument;
import org.etsi.uri.x01903.v13.UnsignedPropertiesType;

/* loaded from: classes13.dex */
public class UnsignedPropertiesDocumentImpl extends XmlComplexContentImpl implements UnsignedPropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "UnsignedProperties")};
    private static final long serialVersionUID = 1;

    public UnsignedPropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesDocument
    public UnsignedPropertiesType addNewUnsignedProperties() {
        UnsignedPropertiesType unsignedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedPropertiesType = (UnsignedPropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return unsignedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesDocument
    public UnsignedPropertiesType getUnsignedProperties() {
        UnsignedPropertiesType unsignedPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedPropertiesType = (UnsignedPropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (unsignedPropertiesType == null) {
                unsignedPropertiesType = null;
            }
        }
        return unsignedPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedPropertiesDocument
    public void setUnsignedProperties(UnsignedPropertiesType unsignedPropertiesType) {
        generatedSetterHelperImpl(unsignedPropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
