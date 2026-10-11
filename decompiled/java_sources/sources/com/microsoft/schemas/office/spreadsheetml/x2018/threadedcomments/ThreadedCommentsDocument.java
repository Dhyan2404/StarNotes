package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ThreadedCommentsDocument extends XmlObject {
    public static final DocumentFactory<ThreadedCommentsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ThreadedCommentsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "threadedcomments8002doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTThreadedComments addNewThreadedComments();

    CTThreadedComments getThreadedComments();

    void setThreadedComments(CTThreadedComments cTThreadedComments);
}
