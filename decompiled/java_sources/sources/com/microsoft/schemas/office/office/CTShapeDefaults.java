package com.microsoft.schemas.office.office;

import com.microsoft.schemas.vml.CTShadow;
import com.microsoft.schemas.vml.CTStroke;
import com.microsoft.schemas.vml.CTTextbox;
import com.microsoft.schemas.vml.STExt;
import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTShapeDefaults extends XmlObject {
    public static final DocumentFactory<CTShapeDefaults> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShapeDefaults> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshapedefaultsadcctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCallout addNewCallout();

    CTColorMenu addNewColormenu();

    CTColorMru addNewColormru();

    CTExtrusion addNewExtrusion();

    com.microsoft.schemas.vml.CTFill addNewFill();

    CTLock addNewLock();

    CTShadow addNewShadow();

    CTSkew addNewSkew();

    CTStroke addNewStroke();

    CTTextbox addNewTextbox();

    STTrueFalse.Enum getAllowincell();

    CTCallout getCallout();

    CTColorMenu getColormenu();

    CTColorMru getColormru();

    STExt.Enum getExt();

    CTExtrusion getExtrusion();

    com.microsoft.schemas.vml.CTFill getFill();

    STTrueFalse.Enum getFill2();

    String getFillcolor();

    CTLock getLock();

    CTShadow getShadow();

    CTSkew getSkew();

    BigInteger getSpidmax();

    CTStroke getStroke();

    STTrueFalse.Enum getStroke2();

    String getStrokecolor();

    String getStyle();

    CTTextbox getTextbox();

    boolean isSetAllowincell();

    boolean isSetCallout();

    boolean isSetColormenu();

    boolean isSetColormru();

    boolean isSetExt();

    boolean isSetExtrusion();

    boolean isSetFill();

    boolean isSetFill2();

    boolean isSetFillcolor();

    boolean isSetLock();

    boolean isSetShadow();

    boolean isSetSkew();

    boolean isSetSpidmax();

    boolean isSetStroke();

    boolean isSetStroke2();

    boolean isSetStrokecolor();

    boolean isSetStyle();

    boolean isSetTextbox();

    void setAllowincell(STTrueFalse.Enum r1);

    void setCallout(CTCallout cTCallout);

    void setColormenu(CTColorMenu cTColorMenu);

    void setColormru(CTColorMru cTColorMru);

    void setExt(STExt.Enum r1);

    void setExtrusion(CTExtrusion cTExtrusion);

    void setFill(com.microsoft.schemas.vml.CTFill cTFill);

    void setFill2(STTrueFalse.Enum r1);

    void setFillcolor(String str);

    void setLock(CTLock cTLock);

    void setShadow(CTShadow cTShadow);

    void setSkew(CTSkew cTSkew);

    void setSpidmax(BigInteger bigInteger);

    void setStroke(CTStroke cTStroke);

    void setStroke2(STTrueFalse.Enum r1);

    void setStrokecolor(String str);

    void setStyle(String str);

    void setTextbox(CTTextbox cTTextbox);

    void unsetAllowincell();

    void unsetCallout();

    void unsetColormenu();

    void unsetColormru();

    void unsetExt();

    void unsetExtrusion();

    void unsetFill();

    void unsetFill2();

    void unsetFillcolor();

    void unsetLock();

    void unsetShadow();

    void unsetSkew();

    void unsetSpidmax();

    void unsetStroke();

    void unsetStroke2();

    void unsetStrokecolor();

    void unsetStyle();

    void unsetTextbox();

    STTrueFalse xgetAllowincell();

    STExt xgetExt();

    STTrueFalse xgetFill2();

    STColorType xgetFillcolor();

    XmlInteger xgetSpidmax();

    STTrueFalse xgetStroke2();

    STColorType xgetStrokecolor();

    XmlString xgetStyle();

    void xsetAllowincell(STTrueFalse sTTrueFalse);

    void xsetExt(STExt sTExt);

    void xsetFill2(STTrueFalse sTTrueFalse);

    void xsetFillcolor(STColorType sTColorType);

    void xsetSpidmax(XmlInteger xmlInteger);

    void xsetStroke2(STTrueFalse sTTrueFalse);

    void xsetStrokecolor(STColorType sTColorType);

    void xsetStyle(XmlString xmlString);
}
