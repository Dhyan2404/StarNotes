package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.AuthorListType;
import com.microsoft.schemas.office.visio.x2012.main.CommentListType;
import com.microsoft.schemas.office.visio.x2012.main.CommentsType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CommentsTypeImpl extends XmlComplexContentImpl implements CommentsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "AuthorList"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "CommentList"), new QName("", "ShowCommentTags")};
    private static final long serialVersionUID = 1;

    public CommentsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public AuthorListType addNewAuthorList() {
        AuthorListType authorListType;
        synchronized (monitor()) {
            check_orphaned();
            authorListType = (AuthorListType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return authorListType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public CommentListType addNewCommentList() {
        CommentListType commentListType;
        synchronized (monitor()) {
            check_orphaned();
            commentListType = (CommentListType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return commentListType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public AuthorListType getAuthorList() {
        AuthorListType authorListType;
        synchronized (monitor()) {
            check_orphaned();
            authorListType = (AuthorListType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (authorListType == null) {
                authorListType = null;
            }
        }
        return authorListType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public CommentListType getCommentList() {
        CommentListType commentListType;
        synchronized (monitor()) {
            check_orphaned();
            commentListType = (CommentListType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (commentListType == null) {
                commentListType = null;
            }
        }
        return commentListType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public boolean getShowCommentTags() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public boolean isSetAuthorList() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public boolean isSetCommentList() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public boolean isSetShowCommentTags() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void setAuthorList(AuthorListType authorListType) {
        generatedSetterHelperImpl(authorListType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void setCommentList(CommentListType commentListType) {
        generatedSetterHelperImpl(commentListType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void setShowCommentTags(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void unsetAuthorList() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void unsetCommentList() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void unsetShowCommentTags() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public XmlBoolean xgetShowCommentTags() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlBoolean;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.CommentsType
    public void xsetShowCommentTags(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
