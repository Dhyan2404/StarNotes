package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SPUserNoticeDocument extends XmlObject {
    public static final DocumentFactory<SPUserNoticeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SPUserNoticeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "spusernotice0ee4doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SPUserNoticeType addNewSPUserNotice();

    SPUserNoticeType getSPUserNotice();

    void setSPUserNotice(SPUserNoticeType sPUserNoticeType);
}
