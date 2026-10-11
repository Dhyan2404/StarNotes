package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTCommentsEx;
import com.microsoft.schemas.office.word.x2012.wordml.CommentsExDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CommentsExDocumentImpl extends XmlComplexContentImpl implements CommentsExDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "commentsEx")};
    private static final long serialVersionUID = 1;

    public CommentsExDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CommentsExDocument
    public CTCommentsEx addNewCommentsEx() {
        CTCommentsEx cTCommentsEx;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentsEx = (CTCommentsEx) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCommentsEx;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CommentsExDocument
    public CTCommentsEx getCommentsEx() {
        CTCommentsEx cTCommentsEx;
        synchronized (monitor()) {
            check_orphaned();
            cTCommentsEx = (CTCommentsEx) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCommentsEx == null) {
                cTCommentsEx = null;
            }
        }
        return cTCommentsEx;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.CommentsExDocument
    public void setCommentsEx(CTCommentsEx cTCommentsEx) {
        generatedSetterHelperImpl(cTCommentsEx, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
