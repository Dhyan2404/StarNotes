package com.microsoft.schemas.office.word.x2012.wordml;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTCommentsEx extends XmlObject {
    public static final DocumentFactory<CTCommentsEx> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCommentsEx> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommentsexc37ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCommentEx addNewCommentEx();

    CTCommentEx getCommentExArray(int i);

    CTCommentEx[] getCommentExArray();

    List<CTCommentEx> getCommentExList();

    CTCommentEx insertNewCommentEx(int i);

    void removeCommentEx(int i);

    void setCommentExArray(int i, CTCommentEx cTCommentEx);

    void setCommentExArray(CTCommentEx[] cTCommentExArr);

    int sizeOfCommentExArray();
}
