package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CommentsDocument extends XmlObject {
    public static final DocumentFactory<CommentsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommentsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "comments3cb6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CommentsType addNewComments();

    CommentsType getComments();

    void setComments(CommentsType commentsType);
}
