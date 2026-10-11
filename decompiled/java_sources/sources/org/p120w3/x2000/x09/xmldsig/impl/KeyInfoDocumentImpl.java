package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.KeyInfoDocument;
import org.p120w3.x2000.x09.xmldsig.KeyInfoType;

/* loaded from: classes16.dex */
public class KeyInfoDocumentImpl extends XmlComplexContentImpl implements KeyInfoDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "KeyInfo")};
    private static final long serialVersionUID = 1;

    public KeyInfoDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoDocument
    public KeyInfoType addNewKeyInfo() {
        KeyInfoType keyInfoType;
        synchronized (monitor()) {
            check_orphaned();
            keyInfoType = (KeyInfoType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return keyInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoDocument
    public KeyInfoType getKeyInfo() {
        KeyInfoType keyInfoType;
        synchronized (monitor()) {
            check_orphaned();
            keyInfoType = (KeyInfoType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (keyInfoType == null) {
                keyInfoType = null;
            }
        }
        return keyInfoType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoDocument
    public void setKeyInfo(KeyInfoType keyInfoType) {
        generatedSetterHelperImpl(keyInfoType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
