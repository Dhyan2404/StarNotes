package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.X509DataDocument;
import org.p120w3.x2000.x09.xmldsig.X509DataType;

/* loaded from: classes16.dex */
public class X509DataDocumentImpl extends XmlComplexContentImpl implements X509DataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "X509Data")};
    private static final long serialVersionUID = 1;

    public X509DataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataDocument
    public X509DataType addNewX509Data() {
        X509DataType x509DataType;
        synchronized (monitor()) {
            check_orphaned();
            x509DataType = (X509DataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return x509DataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataDocument
    public X509DataType getX509Data() {
        X509DataType x509DataType;
        synchronized (monitor()) {
            check_orphaned();
            x509DataType = (X509DataType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (x509DataType == null) {
                x509DataType = null;
            }
        }
        return x509DataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataDocument
    public void setX509Data(X509DataType x509DataType) {
        generatedSetterHelperImpl(x509DataType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
