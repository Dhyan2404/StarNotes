package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataDocument;
import org.etsi.uri.x01903.v13.EncapsulatedPKIDataType;

/* loaded from: classes13.dex */
public class EncapsulatedPKIDataDocumentImpl extends XmlComplexContentImpl implements EncapsulatedPKIDataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "EncapsulatedPKIData")};
    private static final long serialVersionUID = 1;

    public EncapsulatedPKIDataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.EncapsulatedPKIDataDocument
    public EncapsulatedPKIDataType addNewEncapsulatedPKIData() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.EncapsulatedPKIDataDocument
    public EncapsulatedPKIDataType getEncapsulatedPKIData() {
        EncapsulatedPKIDataType encapsulatedPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            encapsulatedPKIDataType = (EncapsulatedPKIDataType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (encapsulatedPKIDataType == null) {
                encapsulatedPKIDataType = null;
            }
        }
        return encapsulatedPKIDataType;
    }

    @Override // org.etsi.uri.x01903.v13.EncapsulatedPKIDataDocument
    public void setEncapsulatedPKIData(EncapsulatedPKIDataType encapsulatedPKIDataType) {
        generatedSetterHelperImpl(encapsulatedPKIDataType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
