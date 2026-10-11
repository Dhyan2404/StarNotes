package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CommentsDocument;
import com.microsoft.schemas.office.visio.x2012.main.CommentsType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CommentsDocumentImpl extends XmlComplexContentImpl implements CommentsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Comments")};
    private static final long serialVersionUID = 1;

    public CommentsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsDocument
    public CommentsType addNewComments() {
        CommentsType commentsType;
        synchronized (monitor()) {
            check_orphaned();
            commentsType = (CommentsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return commentsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsDocument
    public CommentsType getComments() {
        CommentsType commentsType;
        synchronized (monitor()) {
            check_orphaned();
            commentsType = (CommentsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (commentsType == null) {
                commentsType = null;
            }
        }
        return commentsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsDocument
    public void setComments(CommentsType commentsType) {
        generatedSetterHelperImpl(commentsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
