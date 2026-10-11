package com.microsoft.schemas.office.powerpoint.impl;

import com.microsoft.schemas.office.powerpoint.CTEmpty;
import com.microsoft.schemas.office.powerpoint.IscommentDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class IscommentDocumentImpl extends XmlComplexContentImpl implements IscommentDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:powerpoint", "iscomment")};
    private static final long serialVersionUID = 1;

    public IscommentDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.powerpoint.IscommentDocument
    public CTEmpty addNewIscomment() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmpty;
    }

    @Override // com.microsoft.schemas.office.powerpoint.IscommentDocument
    public CTEmpty getIscomment() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // com.microsoft.schemas.office.powerpoint.IscommentDocument
    public void setIscomment(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
