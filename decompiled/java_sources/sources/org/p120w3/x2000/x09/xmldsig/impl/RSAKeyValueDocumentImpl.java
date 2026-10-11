package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.RSAKeyValueDocument;
import org.p120w3.x2000.x09.xmldsig.RSAKeyValueType;

/* loaded from: classes16.dex */
public class RSAKeyValueDocumentImpl extends XmlComplexContentImpl implements RSAKeyValueDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "RSAKeyValue")};
    private static final long serialVersionUID = 1;

    public RSAKeyValueDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueDocument
    public RSAKeyValueType addNewRSAKeyValue() {
        RSAKeyValueType rSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rSAKeyValueType = (RSAKeyValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return rSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueDocument
    public RSAKeyValueType getRSAKeyValue() {
        RSAKeyValueType rSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rSAKeyValueType = (RSAKeyValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (rSAKeyValueType == null) {
                rSAKeyValueType = null;
            }
        }
        return rSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueDocument
    public void setRSAKeyValue(RSAKeyValueType rSAKeyValueType) {
        generatedSetterHelperImpl(rSAKeyValueType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
