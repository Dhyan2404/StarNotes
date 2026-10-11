package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.RecipientsDocument;

/* loaded from: classes16.dex */
public class RecipientsDocumentImpl extends XmlComplexContentImpl implements RecipientsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "recipients")};
    private static final long serialVersionUID = 1;

    public RecipientsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.RecipientsDocument
    public CTRecipients addNewRecipients() {
        CTRecipients cTRecipients;
        synchronized (monitor()) {
            check_orphaned();
            cTRecipients = (CTRecipients) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRecipients;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.RecipientsDocument
    public CTRecipients getRecipients() {
        CTRecipients cTRecipients;
        synchronized (monitor()) {
            check_orphaned();
            cTRecipients = (CTRecipients) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRecipients == null) {
                cTRecipients = null;
            }
        }
        return cTRecipients;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.RecipientsDocument
    public void setRecipients(CTRecipients cTRecipients) {
        generatedSetterHelperImpl(cTRecipients, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
