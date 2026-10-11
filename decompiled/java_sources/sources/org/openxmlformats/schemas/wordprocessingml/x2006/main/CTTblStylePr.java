package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblStyleOverrideType;

/* loaded from: classes16.dex */
public interface CTTblStylePr extends XmlObject {
    public static final DocumentFactory<CTTblStylePr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblStylePr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttblstylepreb53type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPPrGeneral addNewPPr();

    CTRPr addNewRPr();

    CTTblPrBase addNewTblPr();

    CTTcPr addNewTcPr();

    CTTrPr addNewTrPr();

    CTPPrGeneral getPPr();

    CTRPr getRPr();

    CTTblPrBase getTblPr();

    CTTcPr getTcPr();

    CTTrPr getTrPr();

    STTblStyleOverrideType.Enum getType();

    boolean isSetPPr();

    boolean isSetRPr();

    boolean isSetTblPr();

    boolean isSetTcPr();

    boolean isSetTrPr();

    void setPPr(CTPPrGeneral cTPPrGeneral);

    void setRPr(CTRPr cTRPr);

    void setTblPr(CTTblPrBase cTTblPrBase);

    void setTcPr(CTTcPr cTTcPr);

    void setTrPr(CTTrPr cTTrPr);

    void setType(STTblStyleOverrideType.Enum r1);

    void unsetPPr();

    void unsetRPr();

    void unsetTblPr();

    void unsetTcPr();

    void unsetTrPr();

    STTblStyleOverrideType xgetType();

    void xsetType(STTblStyleOverrideType sTTblStyleOverrideType);
}
