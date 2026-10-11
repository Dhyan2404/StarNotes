package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTGlossaryDocument1;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.GlossaryDocumentDocument1;

/* loaded from: classes16.dex */
public class GlossaryDocumentDocument1Impl extends XmlComplexContentImpl implements GlossaryDocumentDocument1 {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "glossaryDocument")};
    private static final long serialVersionUID = 1;

    public GlossaryDocumentDocument1Impl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.GlossaryDocumentDocument1
    public CTGlossaryDocument1 addNewGlossaryDocument() {
        CTGlossaryDocument1 cTGlossaryDocument1;
        synchronized (monitor()) {
            check_orphaned();
            cTGlossaryDocument1 = (CTGlossaryDocument1) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGlossaryDocument1;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.GlossaryDocumentDocument1
    public CTGlossaryDocument1 getGlossaryDocument() {
        CTGlossaryDocument1 cTGlossaryDocument1;
        synchronized (monitor()) {
            check_orphaned();
            cTGlossaryDocument1 = (CTGlossaryDocument1) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGlossaryDocument1 == null) {
                cTGlossaryDocument1 = null;
            }
        }
        return cTGlossaryDocument1;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.GlossaryDocumentDocument1
    public void setGlossaryDocument(CTGlossaryDocument1 cTGlossaryDocument1) {
        generatedSetterHelperImpl(cTGlossaryDocument1, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
