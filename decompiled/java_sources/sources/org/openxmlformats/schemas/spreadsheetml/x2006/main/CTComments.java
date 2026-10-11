package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTComments extends XmlObject {
    public static final DocumentFactory<CTComments> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTComments> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommentse3bdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAuthors addNewAuthors();

    CTCommentList addNewCommentList();

    CTExtensionList addNewExtLst();

    CTAuthors getAuthors();

    CTCommentList getCommentList();

    CTExtensionList getExtLst();

    boolean isSetExtLst();

    void setAuthors(CTAuthors cTAuthors);

    void setCommentList(CTCommentList cTCommentList);

    void setExtLst(CTExtensionList cTExtensionList);

    void unsetExtLst();
}
