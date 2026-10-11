package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodDocument;
import org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodType;

/* loaded from: classes16.dex */
public class CanonicalizationMethodDocumentImpl extends XmlComplexContentImpl implements CanonicalizationMethodDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "CanonicalizationMethod")};
    private static final long serialVersionUID = 1;

    public CanonicalizationMethodDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodDocument
    public CanonicalizationMethodType addNewCanonicalizationMethod() {
        CanonicalizationMethodType canonicalizationMethodType;
        synchronized (monitor()) {
            check_orphaned();
            canonicalizationMethodType = (CanonicalizationMethodType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return canonicalizationMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodDocument
    public CanonicalizationMethodType getCanonicalizationMethod() {
        CanonicalizationMethodType canonicalizationMethodType;
        synchronized (monitor()) {
            check_orphaned();
            canonicalizationMethodType = (CanonicalizationMethodType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (canonicalizationMethodType == null) {
                canonicalizationMethodType = null;
            }
        }
        return canonicalizationMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.CanonicalizationMethodDocument
    public void setCanonicalizationMethod(CanonicalizationMethodType canonicalizationMethodType) {
        generatedSetterHelperImpl(canonicalizationMethodType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
