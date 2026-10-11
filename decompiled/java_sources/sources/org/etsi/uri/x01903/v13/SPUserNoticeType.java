package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SPUserNoticeType extends XmlObject {
    public static final DocumentFactory<SPUserNoticeType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SPUserNoticeType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "spusernoticetypefd2etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    NoticeReferenceType addNewNoticeRef();

    String getExplicitText();

    NoticeReferenceType getNoticeRef();

    boolean isSetExplicitText();

    boolean isSetNoticeRef();

    void setExplicitText(String str);

    void setNoticeRef(NoticeReferenceType noticeReferenceType);

    void unsetExplicitText();

    void unsetNoticeRef();

    XmlString xgetExplicitText();

    void xsetExplicitText(XmlString xmlString);
}
