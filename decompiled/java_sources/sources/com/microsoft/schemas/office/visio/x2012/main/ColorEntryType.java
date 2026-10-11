package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ColorEntryType extends XmlObject {
    public static final DocumentFactory<ColorEntryType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ColorEntryType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "colorentrytype9e4atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getIX();

    String getRGB();

    void setIX(long j);

    void setRGB(String str);

    XmlUnsignedInt xgetIX();

    XmlString xgetRGB();

    void xsetIX(XmlUnsignedInt xmlUnsignedInt);

    void xsetRGB(XmlString xmlString);
}
