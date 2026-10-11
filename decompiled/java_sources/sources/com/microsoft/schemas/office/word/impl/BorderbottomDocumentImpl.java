package com.microsoft.schemas.office.word.impl;

import com.microsoft.schemas.office.word.BorderbottomDocument;
import com.microsoft.schemas.office.word.CTBorder;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class BorderbottomDocumentImpl extends XmlComplexContentImpl implements BorderbottomDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:word", "borderbottom")};
    private static final long serialVersionUID = 1;

    public BorderbottomDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.BorderbottomDocument
    public CTBorder addNewBorderbottom() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.office.word.BorderbottomDocument
    public CTBorder getBorderbottom() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBorder == null) {
                cTBorder = null;
            }
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.office.word.BorderbottomDocument
    public void setBorderbottom(CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
