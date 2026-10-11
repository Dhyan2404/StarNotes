package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTMathPr extends XmlObject {
    public static final DocumentFactory<CTMathPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMathPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmathpr9a88type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBreakBin addNewBrkBin();

    CTBreakBinSub addNewBrkBinSub();

    CTOMathJc addNewDefJc();

    CTOnOff addNewDispDef();

    CTLimLoc addNewIntLim();

    CTTwipsMeasure addNewInterSp();

    CTTwipsMeasure addNewIntraSp();

    CTTwipsMeasure addNewLMargin();

    CTString addNewMathFont();

    CTLimLoc addNewNaryLim();

    CTTwipsMeasure addNewPostSp();

    CTTwipsMeasure addNewPreSp();

    CTTwipsMeasure addNewRMargin();

    CTOnOff addNewSmallFrac();

    CTTwipsMeasure addNewWrapIndent();

    CTOnOff addNewWrapRight();

    CTBreakBin getBrkBin();

    CTBreakBinSub getBrkBinSub();

    CTOMathJc getDefJc();

    CTOnOff getDispDef();

    CTLimLoc getIntLim();

    CTTwipsMeasure getInterSp();

    CTTwipsMeasure getIntraSp();

    CTTwipsMeasure getLMargin();

    CTString getMathFont();

    CTLimLoc getNaryLim();

    CTTwipsMeasure getPostSp();

    CTTwipsMeasure getPreSp();

    CTTwipsMeasure getRMargin();

    CTOnOff getSmallFrac();

    CTTwipsMeasure getWrapIndent();

    CTOnOff getWrapRight();

    boolean isSetBrkBin();

    boolean isSetBrkBinSub();

    boolean isSetDefJc();

    boolean isSetDispDef();

    boolean isSetIntLim();

    boolean isSetInterSp();

    boolean isSetIntraSp();

    boolean isSetLMargin();

    boolean isSetMathFont();

    boolean isSetNaryLim();

    boolean isSetPostSp();

    boolean isSetPreSp();

    boolean isSetRMargin();

    boolean isSetSmallFrac();

    boolean isSetWrapIndent();

    boolean isSetWrapRight();

    void setBrkBin(CTBreakBin cTBreakBin);

    void setBrkBinSub(CTBreakBinSub cTBreakBinSub);

    void setDefJc(CTOMathJc cTOMathJc);

    void setDispDef(CTOnOff cTOnOff);

    void setIntLim(CTLimLoc cTLimLoc);

    void setInterSp(CTTwipsMeasure cTTwipsMeasure);

    void setIntraSp(CTTwipsMeasure cTTwipsMeasure);

    void setLMargin(CTTwipsMeasure cTTwipsMeasure);

    void setMathFont(CTString cTString);

    void setNaryLim(CTLimLoc cTLimLoc);

    void setPostSp(CTTwipsMeasure cTTwipsMeasure);

    void setPreSp(CTTwipsMeasure cTTwipsMeasure);

    void setRMargin(CTTwipsMeasure cTTwipsMeasure);

    void setSmallFrac(CTOnOff cTOnOff);

    void setWrapIndent(CTTwipsMeasure cTTwipsMeasure);

    void setWrapRight(CTOnOff cTOnOff);

    void unsetBrkBin();

    void unsetBrkBinSub();

    void unsetDefJc();

    void unsetDispDef();

    void unsetIntLim();

    void unsetInterSp();

    void unsetIntraSp();

    void unsetLMargin();

    void unsetMathFont();

    void unsetNaryLim();

    void unsetPostSp();

    void unsetPreSp();

    void unsetRMargin();

    void unsetSmallFrac();

    void unsetWrapIndent();

    void unsetWrapRight();
}
