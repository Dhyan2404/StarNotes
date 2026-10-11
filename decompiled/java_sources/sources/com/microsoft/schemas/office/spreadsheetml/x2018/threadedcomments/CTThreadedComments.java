package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;

/* loaded from: classes7.dex */
public interface CTThreadedComments extends XmlObject {
    public static final DocumentFactory<CTThreadedComments> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTThreadedComments> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctthreadedcommentsaa8etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTThreadedComment addNewThreadedComment();

    CTExtensionList getExtLst();

    CTThreadedComment getThreadedCommentArray(int i);

    CTThreadedComment[] getThreadedCommentArray();

    List<CTThreadedComment> getThreadedCommentList();

    CTThreadedComment insertNewThreadedComment(int i);

    boolean isSetExtLst();

    void removeThreadedComment(int i);

    void setExtLst(CTExtensionList cTExtensionList);

    void setThreadedCommentArray(int i, CTThreadedComment cTThreadedComment);

    void setThreadedCommentArray(CTThreadedComment[] cTThreadedCommentArr);

    int sizeOfThreadedCommentArray();

    void unsetExtLst();
}
