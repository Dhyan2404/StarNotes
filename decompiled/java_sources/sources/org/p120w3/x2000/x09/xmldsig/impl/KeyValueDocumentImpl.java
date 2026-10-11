package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.KeyValueDocument;
import org.p120w3.x2000.x09.xmldsig.KeyValueType;

/* loaded from: classes16.dex */
public class KeyValueDocumentImpl extends XmlComplexContentImpl implements KeyValueDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "KeyValue")};
    private static final long serialVersionUID = 1;

    public KeyValueDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueDocument
    public KeyValueType addNewKeyValue() {
        KeyValueType keyValueType;
        synchronized (monitor()) {
            check_orphaned();
            keyValueType = (KeyValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return keyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueDocument
    public KeyValueType getKeyValue() {
        KeyValueType keyValueType;
        synchronized (monitor()) {
            check_orphaned();
            keyValueType = (KeyValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (keyValueType == null) {
                keyValueType = null;
            }
        }
        return keyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueDocument
    public void setKeyValue(KeyValueType keyValueType) {
        generatedSetterHelperImpl(keyValueType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
