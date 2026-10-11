package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STCaptionPos;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STChapterSep;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STNumberFormat;

/* loaded from: classes16.dex */
public interface CTCaption extends XmlObject {
    public static final DocumentFactory<CTCaption> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCaption> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcaption7c6ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getChapNum();

    BigInteger getHeading();

    String getName();

    Object getNoLabel();

    STNumberFormat.Enum getNumFmt();

    STCaptionPos.Enum getPos();

    STChapterSep.Enum getSep();

    boolean isSetChapNum();

    boolean isSetHeading();

    boolean isSetNoLabel();

    boolean isSetNumFmt();

    boolean isSetPos();

    boolean isSetSep();

    void setChapNum(Object obj);

    void setHeading(BigInteger bigInteger);

    void setName(String str);

    void setNoLabel(Object obj);

    void setNumFmt(STNumberFormat.Enum r1);

    void setPos(STCaptionPos.Enum r1);

    void setSep(STChapterSep.Enum r1);

    void unsetChapNum();

    void unsetHeading();

    void unsetNoLabel();

    void unsetNumFmt();

    void unsetPos();

    void unsetSep();

    STOnOff xgetChapNum();

    STDecimalNumber xgetHeading();

    STString xgetName();

    STOnOff xgetNoLabel();

    STNumberFormat xgetNumFmt();

    STCaptionPos xgetPos();

    STChapterSep xgetSep();

    void xsetChapNum(STOnOff sTOnOff);

    void xsetHeading(STDecimalNumber sTDecimalNumber);

    void xsetName(STString sTString);

    void xsetNoLabel(STOnOff sTOnOff);

    void xsetNumFmt(STNumberFormat sTNumberFormat);

    void xsetPos(STCaptionPos sTCaptionPos);

    void xsetSep(STChapterSep sTChapterSep);
}
