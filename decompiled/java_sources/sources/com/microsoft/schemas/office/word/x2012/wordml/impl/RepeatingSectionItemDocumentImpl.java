package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionItemDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEmpty;

/* loaded from: classes7.dex */
public class RepeatingSectionItemDocumentImpl extends XmlComplexContentImpl implements RepeatingSectionItemDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "repeatingSectionItem")};
    private static final long serialVersionUID = 1;

    public RepeatingSectionItemDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionItemDocument
    public CTEmpty addNewRepeatingSectionItem() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmpty;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionItemDocument
    public CTEmpty getRepeatingSectionItem() {
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

    @Override // com.microsoft.schemas.office.word.x2012.wordml.RepeatingSectionItemDocument
    public void setRepeatingSectionItem(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
