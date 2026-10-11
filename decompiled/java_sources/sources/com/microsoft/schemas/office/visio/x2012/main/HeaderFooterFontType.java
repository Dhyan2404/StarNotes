package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HeaderFooterFontType extends XmlObject {
    public static final DocumentFactory<HeaderFooterFontType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HeaderFooterFontType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "headerfooterfonttypee9e2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    short getCharSet();

    short getClipPrecision();

    int getEscapement();

    String getFaceName();

    int getHeight();

    short getItalic();

    int getOrientation();

    short getOutPrecision();

    short getPitchAndFamily();

    short getQuality();

    short getStrikeOut();

    short getUnderline();

    int getWeight();

    int getWidth();

    boolean isSetCharSet();

    boolean isSetClipPrecision();

    boolean isSetEscapement();

    boolean isSetFaceName();

    boolean isSetHeight();

    boolean isSetItalic();

    boolean isSetOrientation();

    boolean isSetOutPrecision();

    boolean isSetPitchAndFamily();

    boolean isSetQuality();

    boolean isSetStrikeOut();

    boolean isSetUnderline();

    boolean isSetWeight();

    boolean isSetWidth();

    void setCharSet(short s);

    void setClipPrecision(short s);

    void setEscapement(int i);

    void setFaceName(String str);

    void setHeight(int i);

    void setItalic(short s);

    void setOrientation(int i);

    void setOutPrecision(short s);

    void setPitchAndFamily(short s);

    void setQuality(short s);

    void setStrikeOut(short s);

    void setUnderline(short s);

    void setWeight(int i);

    void setWidth(int i);

    void unsetCharSet();

    void unsetClipPrecision();

    void unsetEscapement();

    void unsetFaceName();

    void unsetHeight();

    void unsetItalic();

    void unsetOrientation();

    void unsetOutPrecision();

    void unsetPitchAndFamily();

    void unsetQuality();

    void unsetStrikeOut();

    void unsetUnderline();

    void unsetWeight();

    void unsetWidth();

    XmlUnsignedByte xgetCharSet();

    XmlUnsignedByte xgetClipPrecision();

    XmlInt xgetEscapement();

    XmlString xgetFaceName();

    XmlInt xgetHeight();

    XmlUnsignedByte xgetItalic();

    XmlInt xgetOrientation();

    XmlUnsignedByte xgetOutPrecision();

    XmlUnsignedByte xgetPitchAndFamily();

    XmlUnsignedByte xgetQuality();

    XmlUnsignedByte xgetStrikeOut();

    XmlUnsignedByte xgetUnderline();

    XmlInt xgetWeight();

    XmlInt xgetWidth();

    void xsetCharSet(XmlUnsignedByte xmlUnsignedByte);

    void xsetClipPrecision(XmlUnsignedByte xmlUnsignedByte);

    void xsetEscapement(XmlInt xmlInt);

    void xsetFaceName(XmlString xmlString);

    void xsetHeight(XmlInt xmlInt);

    void xsetItalic(XmlUnsignedByte xmlUnsignedByte);

    void xsetOrientation(XmlInt xmlInt);

    void xsetOutPrecision(XmlUnsignedByte xmlUnsignedByte);

    void xsetPitchAndFamily(XmlUnsignedByte xmlUnsignedByte);

    void xsetQuality(XmlUnsignedByte xmlUnsignedByte);

    void xsetStrikeOut(XmlUnsignedByte xmlUnsignedByte);

    void xsetUnderline(XmlUnsignedByte xmlUnsignedByte);

    void xsetWeight(XmlInt xmlInt);

    void xsetWidth(XmlInt xmlInt);
}
