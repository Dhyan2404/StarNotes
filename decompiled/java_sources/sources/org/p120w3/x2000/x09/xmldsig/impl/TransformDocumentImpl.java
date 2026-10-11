package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.TransformDocument;
import org.p120w3.x2000.x09.xmldsig.TransformType;

/* loaded from: classes16.dex */
public class TransformDocumentImpl extends XmlComplexContentImpl implements TransformDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Transform")};
    private static final long serialVersionUID = 1;

    public TransformDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformDocument
    public TransformType addNewTransform() {
        TransformType transformType;
        synchronized (monitor()) {
            check_orphaned();
            transformType = (TransformType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return transformType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformDocument
    public TransformType getTransform() {
        TransformType transformType;
        synchronized (monitor()) {
            check_orphaned();
            transformType = (TransformType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (transformType == null) {
                transformType = null;
            }
        }
        return transformType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformDocument
    public void setTransform(TransformType transformType) {
        generatedSetterHelperImpl(transformType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
