package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.SPKIDataDocument;
import org.p120w3.x2000.x09.xmldsig.SPKIDataType;

/* loaded from: classes16.dex */
public class SPKIDataDocumentImpl extends XmlComplexContentImpl implements SPKIDataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "SPKIData")};
    private static final long serialVersionUID = 1;

    public SPKIDataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataDocument
    public SPKIDataType addNewSPKIData() {
        SPKIDataType sPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            sPKIDataType = (SPKIDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return sPKIDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataDocument
    public SPKIDataType getSPKIData() {
        SPKIDataType sPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            sPKIDataType = (SPKIDataType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (sPKIDataType == null) {
                sPKIDataType = null;
            }
        }
        return sPKIDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.SPKIDataDocument
    public void setSPKIData(SPKIDataType sPKIDataType) {
        generatedSetterHelperImpl(sPKIDataType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
