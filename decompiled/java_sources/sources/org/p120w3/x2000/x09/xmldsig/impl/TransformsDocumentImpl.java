package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.TransformsDocument;
import org.p120w3.x2000.x09.xmldsig.TransformsType;

/* loaded from: classes16.dex */
public class TransformsDocumentImpl extends XmlComplexContentImpl implements TransformsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Transforms")};
    private static final long serialVersionUID = 1;

    public TransformsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsDocument
    public TransformsType addNewTransforms() {
        TransformsType transformsType;
        synchronized (monitor()) {
            check_orphaned();
            transformsType = (TransformsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return transformsType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsDocument
    public TransformsType getTransforms() {
        TransformsType transformsType;
        synchronized (monitor()) {
            check_orphaned();
            transformsType = (TransformsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (transformsType == null) {
                transformsType = null;
            }
        }
        return transformsType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsDocument
    public void setTransforms(TransformsType transformsType) {
        generatedSetterHelperImpl(transformsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
