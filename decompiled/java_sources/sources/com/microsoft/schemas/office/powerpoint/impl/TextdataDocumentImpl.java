package com.microsoft.schemas.office.powerpoint.impl;

import com.microsoft.schemas.office.powerpoint.CTRel;
import com.microsoft.schemas.office.powerpoint.TextdataDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class TextdataDocumentImpl extends XmlComplexContentImpl implements TextdataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:powerpoint", "textdata")};
    private static final long serialVersionUID = 1;

    public TextdataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.powerpoint.TextdataDocument
    public CTRel addNewTextdata() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRel;
    }

    @Override // com.microsoft.schemas.office.powerpoint.TextdataDocument
    public CTRel getTextdata() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // com.microsoft.schemas.office.powerpoint.TextdataDocument
    public void setTextdata(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
