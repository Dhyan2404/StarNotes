package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesDocument;
import org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesType;

/* loaded from: classes13.dex */
public class UnsignedDataObjectPropertiesDocumentImpl extends XmlComplexContentImpl implements UnsignedDataObjectPropertiesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "UnsignedDataObjectProperties")};
    private static final long serialVersionUID = 1;

    public UnsignedDataObjectPropertiesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesDocument
    public UnsignedDataObjectPropertiesType addNewUnsignedDataObjectProperties() {
        UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedDataObjectPropertiesType = (UnsignedDataObjectPropertiesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return unsignedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesDocument
    public UnsignedDataObjectPropertiesType getUnsignedDataObjectProperties() {
        UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType;
        synchronized (monitor()) {
            check_orphaned();
            unsignedDataObjectPropertiesType = (UnsignedDataObjectPropertiesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (unsignedDataObjectPropertiesType == null) {
                unsignedDataObjectPropertiesType = null;
            }
        }
        return unsignedDataObjectPropertiesType;
    }

    @Override // org.etsi.uri.x01903.v13.UnsignedDataObjectPropertiesDocument
    public void setUnsignedDataObjectProperties(UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType) {
        generatedSetterHelperImpl(unsignedDataObjectPropertiesType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
