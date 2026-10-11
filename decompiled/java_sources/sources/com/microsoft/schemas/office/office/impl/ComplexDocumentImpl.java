package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTComplex;
import com.microsoft.schemas.office.office.ComplexDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ComplexDocumentImpl extends XmlComplexContentImpl implements ComplexDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "complex")};
    private static final long serialVersionUID = 1;

    public ComplexDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ComplexDocument
    public CTComplex addNewComplex() {
        CTComplex cTComplex;
        synchronized (monitor()) {
            check_orphaned();
            cTComplex = (CTComplex) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTComplex;
    }

    @Override // com.microsoft.schemas.office.office.ComplexDocument
    public CTComplex getComplex() {
        CTComplex cTComplex;
        synchronized (monitor()) {
            check_orphaned();
            cTComplex = (CTComplex) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTComplex == null) {
                cTComplex = null;
            }
        }
        return cTComplex;
    }

    @Override // com.microsoft.schemas.office.office.ComplexDocument
    public void setComplex(CTComplex cTComplex) {
        generatedSetterHelperImpl(cTComplex, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
