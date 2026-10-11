package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl;

import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTThreadedComments;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.ThreadedCommentsDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ThreadedCommentsDocumentImpl extends XmlComplexContentImpl implements ThreadedCommentsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "ThreadedComments")};
    private static final long serialVersionUID = 1;

    public ThreadedCommentsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.ThreadedCommentsDocument
    public CTThreadedComments addNewThreadedComments() {
        CTThreadedComments cTThreadedComments;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedComments = (CTThreadedComments) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTThreadedComments;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.ThreadedCommentsDocument
    public CTThreadedComments getThreadedComments() {
        CTThreadedComments cTThreadedComments;
        synchronized (monitor()) {
            check_orphaned();
            cTThreadedComments = (CTThreadedComments) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTThreadedComments == null) {
                cTThreadedComments = null;
            }
        }
        return cTThreadedComments;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.ThreadedCommentsDocument
    public void setThreadedComments(CTThreadedComments cTThreadedComments) {
        generatedSetterHelperImpl(cTThreadedComments, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
