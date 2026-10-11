package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;

/* loaded from: classes14.dex */
public interface CTElemPropSet extends XmlObject {
    public static final DocumentFactory<CTElemPropSet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTElemPropSet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctelempropset806btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLayoutVariablePropertySet addNewPresLayoutVars();

    CTShapeStyle addNewStyle();

    boolean getCoherent3DOff();

    String getCsCatId();

    String getCsTypeId();

    int getCustAng();

    boolean getCustFlipHor();

    boolean getCustFlipVert();

    Object getCustLinFactNeighborX();

    Object getCustLinFactNeighborY();

    Object getCustLinFactX();

    Object getCustLinFactY();

    Object getCustRadScaleInc();

    Object getCustRadScaleRad();

    Object getCustScaleX();

    Object getCustScaleY();

    int getCustSzX();

    int getCustSzY();

    boolean getCustT();

    String getLoCatId();

    String getLoTypeId();

    boolean getPhldr();

    String getPhldrT();

    Object getPresAssocID();

    CTLayoutVariablePropertySet getPresLayoutVars();

    String getPresName();

    int getPresStyleCnt();

    int getPresStyleIdx();

    String getPresStyleLbl();

    String getQsCatId();

    String getQsTypeId();

    CTShapeStyle getStyle();

    boolean isSetCoherent3DOff();

    boolean isSetCsCatId();

    boolean isSetCsTypeId();

    boolean isSetCustAng();

    boolean isSetCustFlipHor();

    boolean isSetCustFlipVert();

    boolean isSetCustLinFactNeighborX();

    boolean isSetCustLinFactNeighborY();

    boolean isSetCustLinFactX();

    boolean isSetCustLinFactY();

    boolean isSetCustRadScaleInc();

    boolean isSetCustRadScaleRad();

    boolean isSetCustScaleX();

    boolean isSetCustScaleY();

    boolean isSetCustSzX();

    boolean isSetCustSzY();

    boolean isSetCustT();

    boolean isSetLoCatId();

    boolean isSetLoTypeId();

    boolean isSetPhldr();

    boolean isSetPhldrT();

    boolean isSetPresAssocID();

    boolean isSetPresLayoutVars();

    boolean isSetPresName();

    boolean isSetPresStyleCnt();

    boolean isSetPresStyleIdx();

    boolean isSetPresStyleLbl();

    boolean isSetQsCatId();

    boolean isSetQsTypeId();

    boolean isSetStyle();

    void setCoherent3DOff(boolean z);

    void setCsCatId(String str);

    void setCsTypeId(String str);

    void setCustAng(int i);

    void setCustFlipHor(boolean z);

    void setCustFlipVert(boolean z);

    void setCustLinFactNeighborX(Object obj);

    void setCustLinFactNeighborY(Object obj);

    void setCustLinFactX(Object obj);

    void setCustLinFactY(Object obj);

    void setCustRadScaleInc(Object obj);

    void setCustRadScaleRad(Object obj);

    void setCustScaleX(Object obj);

    void setCustScaleY(Object obj);

    void setCustSzX(int i);

    void setCustSzY(int i);

    void setCustT(boolean z);

    void setLoCatId(String str);

    void setLoTypeId(String str);

    void setPhldr(boolean z);

    void setPhldrT(String str);

    void setPresAssocID(Object obj);

    void setPresLayoutVars(CTLayoutVariablePropertySet cTLayoutVariablePropertySet);

    void setPresName(String str);

    void setPresStyleCnt(int i);

    void setPresStyleIdx(int i);

    void setPresStyleLbl(String str);

    void setQsCatId(String str);

    void setQsTypeId(String str);

    void setStyle(CTShapeStyle cTShapeStyle);

    void unsetCoherent3DOff();

    void unsetCsCatId();

    void unsetCsTypeId();

    void unsetCustAng();

    void unsetCustFlipHor();

    void unsetCustFlipVert();

    void unsetCustLinFactNeighborX();

    void unsetCustLinFactNeighborY();

    void unsetCustLinFactX();

    void unsetCustLinFactY();

    void unsetCustRadScaleInc();

    void unsetCustRadScaleRad();

    void unsetCustScaleX();

    void unsetCustScaleY();

    void unsetCustSzX();

    void unsetCustSzY();

    void unsetCustT();

    void unsetLoCatId();

    void unsetLoTypeId();

    void unsetPhldr();

    void unsetPhldrT();

    void unsetPresAssocID();

    void unsetPresLayoutVars();

    void unsetPresName();

    void unsetPresStyleCnt();

    void unsetPresStyleIdx();

    void unsetPresStyleLbl();

    void unsetQsCatId();

    void unsetQsTypeId();

    void unsetStyle();

    XmlBoolean xgetCoherent3DOff();

    XmlString xgetCsCatId();

    XmlString xgetCsTypeId();

    XmlInt xgetCustAng();

    XmlBoolean xgetCustFlipHor();

    XmlBoolean xgetCustFlipVert();

    STPrSetCustVal xgetCustLinFactNeighborX();

    STPrSetCustVal xgetCustLinFactNeighborY();

    STPrSetCustVal xgetCustLinFactX();

    STPrSetCustVal xgetCustLinFactY();

    STPrSetCustVal xgetCustRadScaleInc();

    STPrSetCustVal xgetCustRadScaleRad();

    STPrSetCustVal xgetCustScaleX();

    STPrSetCustVal xgetCustScaleY();

    XmlInt xgetCustSzX();

    XmlInt xgetCustSzY();

    XmlBoolean xgetCustT();

    XmlString xgetLoCatId();

    XmlString xgetLoTypeId();

    XmlBoolean xgetPhldr();

    XmlString xgetPhldrT();

    STModelId xgetPresAssocID();

    XmlString xgetPresName();

    XmlInt xgetPresStyleCnt();

    XmlInt xgetPresStyleIdx();

    XmlString xgetPresStyleLbl();

    XmlString xgetQsCatId();

    XmlString xgetQsTypeId();

    void xsetCoherent3DOff(XmlBoolean xmlBoolean);

    void xsetCsCatId(XmlString xmlString);

    void xsetCsTypeId(XmlString xmlString);

    void xsetCustAng(XmlInt xmlInt);

    void xsetCustFlipHor(XmlBoolean xmlBoolean);

    void xsetCustFlipVert(XmlBoolean xmlBoolean);

    void xsetCustLinFactNeighborX(STPrSetCustVal sTPrSetCustVal);

    void xsetCustLinFactNeighborY(STPrSetCustVal sTPrSetCustVal);

    void xsetCustLinFactX(STPrSetCustVal sTPrSetCustVal);

    void xsetCustLinFactY(STPrSetCustVal sTPrSetCustVal);

    void xsetCustRadScaleInc(STPrSetCustVal sTPrSetCustVal);

    void xsetCustRadScaleRad(STPrSetCustVal sTPrSetCustVal);

    void xsetCustScaleX(STPrSetCustVal sTPrSetCustVal);

    void xsetCustScaleY(STPrSetCustVal sTPrSetCustVal);

    void xsetCustSzX(XmlInt xmlInt);

    void xsetCustSzY(XmlInt xmlInt);

    void xsetCustT(XmlBoolean xmlBoolean);

    void xsetLoCatId(XmlString xmlString);

    void xsetLoTypeId(XmlString xmlString);

    void xsetPhldr(XmlBoolean xmlBoolean);

    void xsetPhldrT(XmlString xmlString);

    void xsetPresAssocID(STModelId sTModelId);

    void xsetPresName(XmlString xmlString);

    void xsetPresStyleCnt(XmlInt xmlInt);

    void xsetPresStyleIdx(XmlInt xmlInt);

    void xsetPresStyleLbl(XmlString xmlString);

    void xsetQsCatId(XmlString xmlString);

    void xsetQsTypeId(XmlString xmlString);
}
