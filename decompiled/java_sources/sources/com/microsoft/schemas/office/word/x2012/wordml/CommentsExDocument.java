package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CommentsExDocument extends XmlObject {
    public static final DocumentFactory<CommentsExDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommentsExDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "commentsex5babdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommentsEx addNewCommentsEx();

    CTCommentsEx getCommentsEx();

    void setCommentsEx(CTCommentsEx cTCommentsEx);
}
