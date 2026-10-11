package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTThreadedCommentMentions extends XmlObject {
    public static final DocumentFactory<CTThreadedCommentMentions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTThreadedCommentMentions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctthreadedcommentmentionsc746type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMention addNewMention();

    CTMention getMentionArray(int i);

    CTMention[] getMentionArray();

    List<CTMention> getMentionList();

    CTMention insertNewMention(int i);

    void removeMention(int i);

    void setMentionArray(int i, CTMention cTMention);

    void setMentionArray(CTMention[] cTMentionArr);

    int sizeOfMentionArray();
}
