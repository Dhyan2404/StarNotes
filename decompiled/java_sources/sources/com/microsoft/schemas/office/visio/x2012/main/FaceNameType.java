package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FaceNameType extends XmlObject {
    public static final DocumentFactory<FaceNameType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FaceNameType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "facenametype3e71type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCharSets();

    long getFlags();

    String getNameU();

    String getPanos();

    String getPanose();

    String getUnicodeRanges();

    boolean isSetCharSets();

    boolean isSetFlags();

    boolean isSetPanos();

    boolean isSetPanose();

    boolean isSetUnicodeRanges();

    void setCharSets(String str);

    void setFlags(long j);

    void setNameU(String str);

    void setPanos(String str);

    void setPanose(String str);

    void setUnicodeRanges(String str);

    void unsetCharSets();

    void unsetFlags();

    void unsetPanos();

    void unsetPanose();

    void unsetUnicodeRanges();

    XmlString xgetCharSets();

    XmlUnsignedInt xgetFlags();

    XmlString xgetNameU();

    XmlString xgetPanos();

    XmlString xgetPanose();

    XmlString xgetUnicodeRanges();

    void xsetCharSets(XmlString xmlString);

    void xsetFlags(XmlUnsignedInt xmlUnsignedInt);

    void xsetNameU(XmlString xmlString);

    void xsetPanos(XmlString xmlString);

    void xsetPanose(XmlString xmlString);

    void xsetUnicodeRanges(XmlString xmlString);
}
