package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TitleAttribute extends XmlObject {
    public static final DocumentFactory<TitleAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TitleAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "titlebfcbattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getTitle();

    boolean isSetTitle();

    void setTitle(String str);

    void unsetTitle();

    XmlString xgetTitle();

    void xsetTitle(XmlString xmlString);
}
