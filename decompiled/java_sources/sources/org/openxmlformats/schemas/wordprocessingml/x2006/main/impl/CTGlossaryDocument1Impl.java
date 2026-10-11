package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocParts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1;

/* loaded from: classes16.dex */
public class CTGlossaryDocument1Impl extends CTDocumentBaseImpl implements CTGlossaryDocument1 {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "docParts")};
    private static final long serialVersionUID = 1;

    public CTGlossaryDocument1Impl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1
    public CTDocParts addNewDocParts() {
        CTDocParts cTDocParts;
        synchronized (monitor()) {
            check_orphaned();
            cTDocParts = (CTDocParts) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocParts;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1
    public CTDocParts getDocParts() {
        CTDocParts cTDocParts;
        synchronized (monitor()) {
            check_orphaned();
            cTDocParts = (CTDocParts) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDocParts == null) {
                cTDocParts = null;
            }
        }
        return cTDocParts;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1
    public boolean isSetDocParts() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1
    public void setDocParts(CTDocParts cTDocParts) {
        generatedSetterHelperImpl(cTDocParts, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1
    public void unsetDocParts() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
