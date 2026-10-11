package com.microsoft.schemas.office.word.impl;

import com.microsoft.schemas.office.word.BordertopDocument;
import com.microsoft.schemas.office.word.CTBorder;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class BordertopDocumentImpl extends XmlComplexContentImpl implements BordertopDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:word", "bordertop")};
    private static final long serialVersionUID = 1;

    public BordertopDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.BordertopDocument
    public CTBorder addNewBordertop() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.office.word.BordertopDocument
    public CTBorder getBordertop() {
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

    @Override // com.microsoft.schemas.office.word.BordertopDocument
    public void setBordertop(CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
