package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.PGPDataDocument;
import org.p120w3.x2000.x09.xmldsig.PGPDataType;

/* loaded from: classes16.dex */
public class PGPDataDocumentImpl extends XmlComplexContentImpl implements PGPDataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "PGPData")};
    private static final long serialVersionUID = 1;

    public PGPDataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.PGPDataDocument
    public PGPDataType addNewPGPData() {
        PGPDataType pGPDataType;
        synchronized (monitor()) {
            check_orphaned();
            pGPDataType = (PGPDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return pGPDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.PGPDataDocument
    public PGPDataType getPGPData() {
        PGPDataType pGPDataType;
        synchronized (monitor()) {
            check_orphaned();
            pGPDataType = (PGPDataType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (pGPDataType == null) {
                pGPDataType = null;
            }
        }
        return pGPDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.PGPDataDocument
    public void setPGPData(PGPDataType pGPDataType) {
        generatedSetterHelperImpl(pGPDataType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
