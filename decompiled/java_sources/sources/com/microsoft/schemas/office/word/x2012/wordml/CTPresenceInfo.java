package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTPresenceInfo extends XmlObject {
    public static final DocumentFactory<CTPresenceInfo> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresenceInfo> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresenceinfo677dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getProviderId();

    String getUserId();

    void setProviderId(String str);

    void setUserId(String str);

    XmlString xgetProviderId();

    XmlString xgetUserId();

    void xsetProviderId(XmlString xmlString);

    void xsetUserId(XmlString xmlString);
}
