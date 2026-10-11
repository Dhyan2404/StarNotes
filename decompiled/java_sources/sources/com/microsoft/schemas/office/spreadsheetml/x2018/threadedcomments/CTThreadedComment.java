package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRef;

/* loaded from: classes7.dex */
public interface CTThreadedComment extends XmlObject {
    public static final DocumentFactory<CTThreadedComment> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTThreadedComment> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctthreadedcomment455dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XmlObject addNewExtLst();

    CTThreadedCommentMentions addNewMentions();

    Calendar getDT();

    boolean getDone();

    XmlObject getExtLst();

    String getId();

    CTThreadedCommentMentions getMentions();

    String getParentId();

    String getPersonId();

    String getRef();

    String getText();

    boolean isSetDT();

    boolean isSetDone();

    boolean isSetExtLst();

    boolean isSetMentions();

    boolean isSetParentId();

    boolean isSetRef();

    boolean isSetText();

    void setDT(Calendar calendar);

    void setDone(boolean z);

    void setExtLst(XmlObject xmlObject);

    void setId(String str);

    void setMentions(CTThreadedCommentMentions cTThreadedCommentMentions);

    void setParentId(String str);

    void setPersonId(String str);

    void setRef(String str);

    void setText(String str);

    void unsetDT();

    void unsetDone();

    void unsetExtLst();

    void unsetMentions();

    void unsetParentId();

    void unsetRef();

    void unsetText();

    XmlDateTime xgetDT();

    XmlBoolean xgetDone();

    STGuid xgetId();

    STGuid xgetParentId();

    STGuid xgetPersonId();

    STRef xgetRef();

    STXstring xgetText();

    void xsetDT(XmlDateTime xmlDateTime);

    void xsetDone(XmlBoolean xmlBoolean);

    void xsetId(STGuid sTGuid);

    void xsetParentId(STGuid sTGuid);

    void xsetPersonId(STGuid sTGuid);

    void xsetRef(STRef sTRef);

    void xsetText(STXstring sTXstring);
}
