package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CommentListType extends XmlObject {
    public static final DocumentFactory<CommentListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommentListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "commentlisttype966etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CommentEntryType addNewCommentEntry();

    CommentEntryType getCommentEntryArray(int i);

    CommentEntryType[] getCommentEntryArray();

    List<CommentEntryType> getCommentEntryList();

    CommentEntryType insertNewCommentEntry(int i);

    void removeCommentEntry(int i);

    void setCommentEntryArray(int i, CommentEntryType commentEntryType);

    void setCommentEntryArray(CommentEntryType[] commentEntryTypeArr);

    int sizeOfCommentEntryArray();
}
