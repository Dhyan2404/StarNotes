package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTEqArrPr extends XmlObject {
    public static final DocumentFactory<CTEqArrPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEqArrPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cteqarrpr1305type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTYAlign addNewBaseJc();

    CTCtrlPr addNewCtrlPr();

    CTOnOff addNewMaxDist();

    CTOnOff addNewObjDist();

    CTUnSignedInteger addNewRSp();

    CTSpacingRule addNewRSpRule();

    CTYAlign getBaseJc();

    CTCtrlPr getCtrlPr();

    CTOnOff getMaxDist();

    CTOnOff getObjDist();

    CTUnSignedInteger getRSp();

    CTSpacingRule getRSpRule();

    boolean isSetBaseJc();

    boolean isSetCtrlPr();

    boolean isSetMaxDist();

    boolean isSetObjDist();

    boolean isSetRSp();

    boolean isSetRSpRule();

    void setBaseJc(CTYAlign cTYAlign);

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setMaxDist(CTOnOff cTOnOff);

    void setObjDist(CTOnOff cTOnOff);

    void setRSp(CTUnSignedInteger cTUnSignedInteger);

    void setRSpRule(CTSpacingRule cTSpacingRule);

    void unsetBaseJc();

    void unsetCtrlPr();

    void unsetMaxDist();

    void unsetObjDist();

    void unsetRSp();

    void unsetRSpRule();
}
