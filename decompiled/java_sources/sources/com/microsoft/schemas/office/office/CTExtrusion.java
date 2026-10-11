package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STColorMode;
import com.microsoft.schemas.office.office.STExtrusionPlane;
import com.microsoft.schemas.office.office.STExtrusionRender;
import com.microsoft.schemas.office.office.STExtrusionType;
import com.microsoft.schemas.vml.STExt;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface CTExtrusion extends XmlObject {
    public static final DocumentFactory<CTExtrusion> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTExtrusion> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctextrusion7112type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getAutorotationcenter();

    String getBackdepth();

    String getBrightness();

    String getColor();

    STColorMode.Enum getColormode();

    String getDiffusity();

    String getEdge();

    STExt.Enum getExt();

    String getFacet();

    String getForedepth();

    STTrueFalse.Enum getLightface();

    STTrueFalse.Enum getLightharsh();

    STTrueFalse.Enum getLightharsh2();

    String getLightlevel();

    String getLightlevel2();

    String getLightposition();

    String getLightposition2();

    STTrueFalse.Enum getLockrotationcenter();

    STTrueFalse.Enum getMetal();

    STTrueFalse.Enum getOn();

    String getOrientation();

    float getOrientationangle();

    STExtrusionPlane.Enum getPlane();

    STExtrusionRender.Enum getRender();

    String getRotationangle();

    String getRotationcenter();

    float getShininess();

    String getSkewamt();

    float getSkewangle();

    String getSpecularity();

    STExtrusionType.Enum getType();

    String getViewpoint();

    String getViewpointorigin();

    boolean isSetAutorotationcenter();

    boolean isSetBackdepth();

    boolean isSetBrightness();

    boolean isSetColor();

    boolean isSetColormode();

    boolean isSetDiffusity();

    boolean isSetEdge();

    boolean isSetExt();

    boolean isSetFacet();

    boolean isSetForedepth();

    boolean isSetLightface();

    boolean isSetLightharsh();

    boolean isSetLightharsh2();

    boolean isSetLightlevel();

    boolean isSetLightlevel2();

    boolean isSetLightposition();

    boolean isSetLightposition2();

    boolean isSetLockrotationcenter();

    boolean isSetMetal();

    boolean isSetOn();

    boolean isSetOrientation();

    boolean isSetOrientationangle();

    boolean isSetPlane();

    boolean isSetRender();

    boolean isSetRotationangle();

    boolean isSetRotationcenter();

    boolean isSetShininess();

    boolean isSetSkewamt();

    boolean isSetSkewangle();

    boolean isSetSpecularity();

    boolean isSetType();

    boolean isSetViewpoint();

    boolean isSetViewpointorigin();

    void setAutorotationcenter(STTrueFalse.Enum r1);

    void setBackdepth(String str);

    void setBrightness(String str);

    void setColor(String str);

    void setColormode(STColorMode.Enum r1);

    void setDiffusity(String str);

    void setEdge(String str);

    void setExt(STExt.Enum r1);

    void setFacet(String str);

    void setForedepth(String str);

    void setLightface(STTrueFalse.Enum r1);

    void setLightharsh(STTrueFalse.Enum r1);

    void setLightharsh2(STTrueFalse.Enum r1);

    void setLightlevel(String str);

    void setLightlevel2(String str);

    void setLightposition(String str);

    void setLightposition2(String str);

    void setLockrotationcenter(STTrueFalse.Enum r1);

    void setMetal(STTrueFalse.Enum r1);

    void setOn(STTrueFalse.Enum r1);

    void setOrientation(String str);

    void setOrientationangle(float f);

    void setPlane(STExtrusionPlane.Enum r1);

    void setRender(STExtrusionRender.Enum r1);

    void setRotationangle(String str);

    void setRotationcenter(String str);

    void setShininess(float f);

    void setSkewamt(String str);

    void setSkewangle(float f);

    void setSpecularity(String str);

    void setType(STExtrusionType.Enum r1);

    void setViewpoint(String str);

    void setViewpointorigin(String str);

    void unsetAutorotationcenter();

    void unsetBackdepth();

    void unsetBrightness();

    void unsetColor();

    void unsetColormode();

    void unsetDiffusity();

    void unsetEdge();

    void unsetExt();

    void unsetFacet();

    void unsetForedepth();

    void unsetLightface();

    void unsetLightharsh();

    void unsetLightharsh2();

    void unsetLightlevel();

    void unsetLightlevel2();

    void unsetLightposition();

    void unsetLightposition2();

    void unsetLockrotationcenter();

    void unsetMetal();

    void unsetOn();

    void unsetOrientation();

    void unsetOrientationangle();

    void unsetPlane();

    void unsetRender();

    void unsetRotationangle();

    void unsetRotationcenter();

    void unsetShininess();

    void unsetSkewamt();

    void unsetSkewangle();

    void unsetSpecularity();

    void unsetType();

    void unsetViewpoint();

    void unsetViewpointorigin();

    STTrueFalse xgetAutorotationcenter();

    XmlString xgetBackdepth();

    XmlString xgetBrightness();

    STColorType xgetColor();

    STColorMode xgetColormode();

    XmlString xgetDiffusity();

    XmlString xgetEdge();

    STExt xgetExt();

    XmlString xgetFacet();

    XmlString xgetForedepth();

    STTrueFalse xgetLightface();

    STTrueFalse xgetLightharsh();

    STTrueFalse xgetLightharsh2();

    XmlString xgetLightlevel();

    XmlString xgetLightlevel2();

    XmlString xgetLightposition();

    XmlString xgetLightposition2();

    STTrueFalse xgetLockrotationcenter();

    STTrueFalse xgetMetal();

    STTrueFalse xgetOn();

    XmlString xgetOrientation();

    XmlFloat xgetOrientationangle();

    STExtrusionPlane xgetPlane();

    STExtrusionRender xgetRender();

    XmlString xgetRotationangle();

    XmlString xgetRotationcenter();

    XmlFloat xgetShininess();

    XmlString xgetSkewamt();

    XmlFloat xgetSkewangle();

    XmlString xgetSpecularity();

    STExtrusionType xgetType();

    XmlString xgetViewpoint();

    XmlString xgetViewpointorigin();

    void xsetAutorotationcenter(STTrueFalse sTTrueFalse);

    void xsetBackdepth(XmlString xmlString);

    void xsetBrightness(XmlString xmlString);

    void xsetColor(STColorType sTColorType);

    void xsetColormode(STColorMode sTColorMode);

    void xsetDiffusity(XmlString xmlString);

    void xsetEdge(XmlString xmlString);

    void xsetExt(STExt sTExt);

    void xsetFacet(XmlString xmlString);

    void xsetForedepth(XmlString xmlString);

    void xsetLightface(STTrueFalse sTTrueFalse);

    void xsetLightharsh(STTrueFalse sTTrueFalse);

    void xsetLightharsh2(STTrueFalse sTTrueFalse);

    void xsetLightlevel(XmlString xmlString);

    void xsetLightlevel2(XmlString xmlString);

    void xsetLightposition(XmlString xmlString);

    void xsetLightposition2(XmlString xmlString);

    void xsetLockrotationcenter(STTrueFalse sTTrueFalse);

    void xsetMetal(STTrueFalse sTTrueFalse);

    void xsetOn(STTrueFalse sTTrueFalse);

    void xsetOrientation(XmlString xmlString);

    void xsetOrientationangle(XmlFloat xmlFloat);

    void xsetPlane(STExtrusionPlane sTExtrusionPlane);

    void xsetRender(STExtrusionRender sTExtrusionRender);

    void xsetRotationangle(XmlString xmlString);

    void xsetRotationcenter(XmlString xmlString);

    void xsetShininess(XmlFloat xmlFloat);

    void xsetSkewamt(XmlString xmlString);

    void xsetSkewangle(XmlFloat xmlFloat);

    void xsetSpecularity(XmlString xmlString);

    void xsetType(STExtrusionType sTExtrusionType);

    void xsetViewpoint(XmlString xmlString);

    void xsetViewpointorigin(XmlString xmlString);
}
