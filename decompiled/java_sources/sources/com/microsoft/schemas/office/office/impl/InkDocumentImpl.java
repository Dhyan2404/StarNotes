package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTInk;
import com.microsoft.schemas.office.office.InkDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class InkDocumentImpl extends XmlComplexContentImpl implements InkDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "ink")};
    private static final long serialVersionUID = 1;

    public InkDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.InkDocument
    public CTInk addNewInk() {
        CTInk cTInk;
        synchronized (monitor()) {
            check_orphaned();
            cTInk = (CTInk) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTInk;
    }

    @Override // com.microsoft.schemas.office.office.InkDocument
    public CTInk getInk() {
        CTInk cTInk;
        synchronized (monitor()) {
            check_orphaned();
            cTInk = (CTInk) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTInk == null) {
                cTInk = null;
            }
        }
        return cTInk;
    }

    @Override // com.microsoft.schemas.office.office.InkDocument
    public void setInk(CTInk cTInk) {
        generatedSetterHelperImpl(cTInk, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
