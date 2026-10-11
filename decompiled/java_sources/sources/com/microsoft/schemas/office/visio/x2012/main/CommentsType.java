package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CommentsType extends XmlObject {
    public static final DocumentFactory<CommentsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommentsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "commentstype5085type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AuthorListType addNewAuthorList();

    CommentListType addNewCommentList();

    AuthorListType getAuthorList();

    CommentListType getCommentList();

    boolean getShowCommentTags();

    boolean isSetAuthorList();

    boolean isSetCommentList();

    boolean isSetShowCommentTags();

    void setAuthorList(AuthorListType authorListType);

    void setCommentList(CommentListType commentListType);

    void setShowCommentTags(boolean z);

    void unsetAuthorList();

    void unsetCommentList();

    void unsetShowCommentTags();

    XmlBoolean xgetShowCommentTags();

    void xsetShowCommentTags(XmlBoolean xmlBoolean);
}
