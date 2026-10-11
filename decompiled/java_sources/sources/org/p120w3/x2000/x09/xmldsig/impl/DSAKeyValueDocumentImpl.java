package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.DSAKeyValueDocument;
import org.p120w3.x2000.x09.xmldsig.DSAKeyValueType;

/* loaded from: classes16.dex */
public class DSAKeyValueDocumentImpl extends XmlComplexContentImpl implements DSAKeyValueDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "DSAKeyValue")};
    private static final long serialVersionUID = 1;

    public DSAKeyValueDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueDocument
    public DSAKeyValueType addNewDSAKeyValue() {
        DSAKeyValueType dSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            dSAKeyValueType = (DSAKeyValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueDocument
    public DSAKeyValueType getDSAKeyValue() {
        DSAKeyValueType dSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            dSAKeyValueType = (DSAKeyValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (dSAKeyValueType == null) {
                dSAKeyValueType = null;
            }
        }
        return dSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueDocument
    public void setDSAKeyValue(DSAKeyValueType dSAKeyValueType) {
        generatedSetterHelperImpl(dSAKeyValueType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
