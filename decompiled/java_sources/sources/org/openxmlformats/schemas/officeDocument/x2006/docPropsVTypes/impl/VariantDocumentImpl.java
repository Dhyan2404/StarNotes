package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVariant;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VariantDocument;

/* loaded from: classes14.dex */
public class VariantDocumentImpl extends XmlComplexContentImpl implements VariantDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "variant")};
    private static final long serialVersionUID = 1;

    public VariantDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VariantDocument
    public CTVariant addNewVariant() {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VariantDocument
    public CTVariant getVariant() {
        CTVariant cTVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTVariant = (CTVariant) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTVariant == null) {
                cTVariant = null;
            }
        }
        return cTVariant;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.VariantDocument
    public void setVariant(CTVariant cTVariant) {
        generatedSetterHelperImpl(cTVariant, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
