package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTFont extends XmlObject {
    public static final DocumentFactory<CTFont> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFont> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfonteb79type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTString addNewAltName();

    CTCharset addNewCharset();

    CTFontRel addNewEmbedBold();

    CTFontRel addNewEmbedBoldItalic();

    CTFontRel addNewEmbedItalic();

    CTFontRel addNewEmbedRegular();

    CTFontFamily addNewFamily();

    CTOnOff addNewNotTrueType();

    CTPanose addNewPanose1();

    CTPitch addNewPitch();

    CTFontSig addNewSig();

    CTString getAltName();

    CTCharset getCharset();

    CTFontRel getEmbedBold();

    CTFontRel getEmbedBoldItalic();

    CTFontRel getEmbedItalic();

    CTFontRel getEmbedRegular();

    CTFontFamily getFamily();

    String getName();

    CTOnOff getNotTrueType();

    CTPanose getPanose1();

    CTPitch getPitch();

    CTFontSig getSig();

    boolean isSetAltName();

    boolean isSetCharset();

    boolean isSetEmbedBold();

    boolean isSetEmbedBoldItalic();

    boolean isSetEmbedItalic();

    boolean isSetEmbedRegular();

    boolean isSetFamily();

    boolean isSetNotTrueType();

    boolean isSetPanose1();

    boolean isSetPitch();

    boolean isSetSig();

    void setAltName(CTString cTString);

    void setCharset(CTCharset cTCharset);

    void setEmbedBold(CTFontRel cTFontRel);

    void setEmbedBoldItalic(CTFontRel cTFontRel);

    void setEmbedItalic(CTFontRel cTFontRel);

    void setEmbedRegular(CTFontRel cTFontRel);

    void setFamily(CTFontFamily cTFontFamily);

    void setName(String str);

    void setNotTrueType(CTOnOff cTOnOff);

    void setPanose1(CTPanose cTPanose);

    void setPitch(CTPitch cTPitch);

    void setSig(CTFontSig cTFontSig);

    void unsetAltName();

    void unsetCharset();

    void unsetEmbedBold();

    void unsetEmbedBoldItalic();

    void unsetEmbedItalic();

    void unsetEmbedRegular();

    void unsetFamily();

    void unsetNotTrueType();

    void unsetPanose1();

    void unsetPitch();

    void unsetSig();

    STString xgetName();

    void xsetName(STString sTString);
}
