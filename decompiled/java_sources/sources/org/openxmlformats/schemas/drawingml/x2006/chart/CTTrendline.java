package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;

/* loaded from: classes14.dex */
public interface CTTrendline extends XmlObject {
    public static final DocumentFactory<CTTrendline> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrendline> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrendlinec5f5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDouble addNewBackward();

    CTBoolean addNewDispEq();

    CTBoolean addNewDispRSqr();

    CTExtensionList addNewExtLst();

    CTDouble addNewForward();

    CTDouble addNewIntercept();

    CTOrder addNewOrder();

    CTPeriod addNewPeriod();

    CTShapeProperties addNewSpPr();

    CTTrendlineLbl addNewTrendlineLbl();

    CTTrendlineType addNewTrendlineType();

    CTDouble getBackward();

    CTBoolean getDispEq();

    CTBoolean getDispRSqr();

    CTExtensionList getExtLst();

    CTDouble getForward();

    CTDouble getIntercept();

    String getName();

    CTOrder getOrder();

    CTPeriod getPeriod();

    CTShapeProperties getSpPr();

    CTTrendlineLbl getTrendlineLbl();

    CTTrendlineType getTrendlineType();

    boolean isSetBackward();

    boolean isSetDispEq();

    boolean isSetDispRSqr();

    boolean isSetExtLst();

    boolean isSetForward();

    boolean isSetIntercept();

    boolean isSetName();

    boolean isSetOrder();

    boolean isSetPeriod();

    boolean isSetSpPr();

    boolean isSetTrendlineLbl();

    void setBackward(CTDouble cTDouble);

    void setDispEq(CTBoolean cTBoolean);

    void setDispRSqr(CTBoolean cTBoolean);

    void setExtLst(CTExtensionList cTExtensionList);

    void setForward(CTDouble cTDouble);

    void setIntercept(CTDouble cTDouble);

    void setName(String str);

    void setOrder(CTOrder cTOrder);

    void setPeriod(CTPeriod cTPeriod);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setTrendlineLbl(CTTrendlineLbl cTTrendlineLbl);

    void setTrendlineType(CTTrendlineType cTTrendlineType);

    void unsetBackward();

    void unsetDispEq();

    void unsetDispRSqr();

    void unsetExtLst();

    void unsetForward();

    void unsetIntercept();

    void unsetName();

    void unsetOrder();

    void unsetPeriod();

    void unsetSpPr();

    void unsetTrendlineLbl();

    XmlString xgetName();

    void xsetName(XmlString xmlString);
}
