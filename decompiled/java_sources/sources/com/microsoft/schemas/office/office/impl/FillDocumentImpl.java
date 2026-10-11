package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTFill;
import com.microsoft.schemas.office.office.FillDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class FillDocumentImpl extends XmlComplexContentImpl implements FillDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "fill")};
    private static final long serialVersionUID = 1;

    public FillDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.FillDocument
    public CTFill addNewFill() {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.office.office.FillDocument
    public CTFill getFill() {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFill == null) {
                cTFill = null;
            }
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.office.office.FillDocument
    public void setFill(CTFill cTFill) {
        generatedSetterHelperImpl(cTFill, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
