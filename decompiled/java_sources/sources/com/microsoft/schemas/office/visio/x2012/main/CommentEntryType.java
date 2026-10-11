package com.microsoft.schemas.office.visio.x2012.main;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CommentEntryType extends XmlString {
    public static final DocumentFactory<CommentEntryType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CommentEntryType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "commententrytype3286type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getAuthorID();

    long getAutoCommentType();

    long getCommentID();

    Calendar getDate();

    boolean getDone();

    Calendar getEditDate();

    long getPageID();

    long getShapeID();

    boolean isSetAutoCommentType();

    boolean isSetDone();

    boolean isSetEditDate();

    boolean isSetShapeID();

    void setAuthorID(long j);

    void setAutoCommentType(long j);

    void setCommentID(long j);

    void setDate(Calendar calendar);

    void setDone(boolean z);

    void setEditDate(Calendar calendar);

    void setPageID(long j);

    void setShapeID(long j);

    void unsetAutoCommentType();

    void unsetDone();

    void unsetEditDate();

    void unsetShapeID();

    XmlUnsignedInt xgetAuthorID();

    XmlUnsignedInt xgetAutoCommentType();

    XmlUnsignedInt xgetCommentID();

    XmlDateTime xgetDate();

    XmlBoolean xgetDone();

    XmlDateTime xgetEditDate();

    XmlUnsignedInt xgetPageID();

    XmlUnsignedInt xgetShapeID();

    void xsetAuthorID(XmlUnsignedInt xmlUnsignedInt);

    void xsetAutoCommentType(XmlUnsignedInt xmlUnsignedInt);

    void xsetCommentID(XmlUnsignedInt xmlUnsignedInt);

    void xsetDate(XmlDateTime xmlDateTime);

    void xsetDone(XmlBoolean xmlBoolean);

    void xsetEditDate(XmlDateTime xmlDateTime);

    void xsetPageID(XmlUnsignedInt xmlUnsignedInt);

    void xsetShapeID(XmlUnsignedInt xmlUnsignedInt);
}
