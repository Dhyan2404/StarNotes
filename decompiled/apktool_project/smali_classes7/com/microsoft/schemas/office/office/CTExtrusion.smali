.class public interface abstract Lcom/microsoft/schemas/office/office/CTExtrusion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTExtrusion;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctextrusion7112type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTExtrusion;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTExtrusion;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAutorotationcenter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getBackdepth()Ljava/lang/String;
.end method

.method public abstract getBrightness()Ljava/lang/String;
.end method

.method public abstract getColor()Ljava/lang/String;
.end method

.method public abstract getColormode()Lcom/microsoft/schemas/office/office/STColorMode$Enum;
.end method

.method public abstract getDiffusity()Ljava/lang/String;
.end method

.method public abstract getEdge()Ljava/lang/String;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getFacet()Ljava/lang/String;
.end method

.method public abstract getForedepth()Ljava/lang/String;
.end method

.method public abstract getLightface()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getLightharsh()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getLightharsh2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getLightlevel()Ljava/lang/String;
.end method

.method public abstract getLightlevel2()Ljava/lang/String;
.end method

.method public abstract getLightposition()Ljava/lang/String;
.end method

.method public abstract getLightposition2()Ljava/lang/String;
.end method

.method public abstract getLockrotationcenter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getMetal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getOrientation()Ljava/lang/String;
.end method

.method public abstract getOrientationangle()F
.end method

.method public abstract getPlane()Lcom/microsoft/schemas/office/office/STExtrusionPlane$Enum;
.end method

.method public abstract getRender()Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;
.end method

.method public abstract getRotationangle()Ljava/lang/String;
.end method

.method public abstract getRotationcenter()Ljava/lang/String;
.end method

.method public abstract getShininess()F
.end method

.method public abstract getSkewamt()Ljava/lang/String;
.end method

.method public abstract getSkewangle()F
.end method

.method public abstract getSpecularity()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/microsoft/schemas/office/office/STExtrusionType$Enum;
.end method

.method public abstract getViewpoint()Ljava/lang/String;
.end method

.method public abstract getViewpointorigin()Ljava/lang/String;
.end method

.method public abstract isSetAutorotationcenter()Z
.end method

.method public abstract isSetBackdepth()Z
.end method

.method public abstract isSetBrightness()Z
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetColormode()Z
.end method

.method public abstract isSetDiffusity()Z
.end method

.method public abstract isSetEdge()Z
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetFacet()Z
.end method

.method public abstract isSetForedepth()Z
.end method

.method public abstract isSetLightface()Z
.end method

.method public abstract isSetLightharsh()Z
.end method

.method public abstract isSetLightharsh2()Z
.end method

.method public abstract isSetLightlevel()Z
.end method

.method public abstract isSetLightlevel2()Z
.end method

.method public abstract isSetLightposition()Z
.end method

.method public abstract isSetLightposition2()Z
.end method

.method public abstract isSetLockrotationcenter()Z
.end method

.method public abstract isSetMetal()Z
.end method

.method public abstract isSetOn()Z
.end method

.method public abstract isSetOrientation()Z
.end method

.method public abstract isSetOrientationangle()Z
.end method

.method public abstract isSetPlane()Z
.end method

.method public abstract isSetRender()Z
.end method

.method public abstract isSetRotationangle()Z
.end method

.method public abstract isSetRotationcenter()Z
.end method

.method public abstract isSetShininess()Z
.end method

.method public abstract isSetSkewamt()Z
.end method

.method public abstract isSetSkewangle()Z
.end method

.method public abstract isSetSpecularity()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetViewpoint()Z
.end method

.method public abstract isSetViewpointorigin()Z
.end method

.method public abstract setAutorotationcenter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setBackdepth(Ljava/lang/String;)V
.end method

.method public abstract setBrightness(Ljava/lang/String;)V
.end method

.method public abstract setColor(Ljava/lang/String;)V
.end method

.method public abstract setColormode(Lcom/microsoft/schemas/office/office/STColorMode$Enum;)V
.end method

.method public abstract setDiffusity(Ljava/lang/String;)V
.end method

.method public abstract setEdge(Ljava/lang/String;)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setFacet(Ljava/lang/String;)V
.end method

.method public abstract setForedepth(Ljava/lang/String;)V
.end method

.method public abstract setLightface(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setLightharsh(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setLightharsh2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setLightlevel(Ljava/lang/String;)V
.end method

.method public abstract setLightlevel2(Ljava/lang/String;)V
.end method

.method public abstract setLightposition(Ljava/lang/String;)V
.end method

.method public abstract setLightposition2(Ljava/lang/String;)V
.end method

.method public abstract setLockrotationcenter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setMetal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setOrientation(Ljava/lang/String;)V
.end method

.method public abstract setOrientationangle(F)V
.end method

.method public abstract setPlane(Lcom/microsoft/schemas/office/office/STExtrusionPlane$Enum;)V
.end method

.method public abstract setRender(Lcom/microsoft/schemas/office/office/STExtrusionRender$Enum;)V
.end method

.method public abstract setRotationangle(Ljava/lang/String;)V
.end method

.method public abstract setRotationcenter(Ljava/lang/String;)V
.end method

.method public abstract setShininess(F)V
.end method

.method public abstract setSkewamt(Ljava/lang/String;)V
.end method

.method public abstract setSkewangle(F)V
.end method

.method public abstract setSpecularity(Ljava/lang/String;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/office/office/STExtrusionType$Enum;)V
.end method

.method public abstract setViewpoint(Ljava/lang/String;)V
.end method

.method public abstract setViewpointorigin(Ljava/lang/String;)V
.end method

.method public abstract unsetAutorotationcenter()V
.end method

.method public abstract unsetBackdepth()V
.end method

.method public abstract unsetBrightness()V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetColormode()V
.end method

.method public abstract unsetDiffusity()V
.end method

.method public abstract unsetEdge()V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetFacet()V
.end method

.method public abstract unsetForedepth()V
.end method

.method public abstract unsetLightface()V
.end method

.method public abstract unsetLightharsh()V
.end method

.method public abstract unsetLightharsh2()V
.end method

.method public abstract unsetLightlevel()V
.end method

.method public abstract unsetLightlevel2()V
.end method

.method public abstract unsetLightposition()V
.end method

.method public abstract unsetLightposition2()V
.end method

.method public abstract unsetLockrotationcenter()V
.end method

.method public abstract unsetMetal()V
.end method

.method public abstract unsetOn()V
.end method

.method public abstract unsetOrientation()V
.end method

.method public abstract unsetOrientationangle()V
.end method

.method public abstract unsetPlane()V
.end method

.method public abstract unsetRender()V
.end method

.method public abstract unsetRotationangle()V
.end method

.method public abstract unsetRotationcenter()V
.end method

.method public abstract unsetShininess()V
.end method

.method public abstract unsetSkewamt()V
.end method

.method public abstract unsetSkewangle()V
.end method

.method public abstract unsetSpecularity()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetViewpoint()V
.end method

.method public abstract unsetViewpointorigin()V
.end method

.method public abstract xgetAutorotationcenter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetBackdepth()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBrightness()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetColor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetColormode()Lcom/microsoft/schemas/office/office/STColorMode;
.end method

.method public abstract xgetDiffusity()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetEdge()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetFacet()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetForedepth()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLightface()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetLightharsh()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetLightharsh2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetLightlevel()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLightlevel2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLightposition()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLightposition2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLockrotationcenter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetMetal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetOrientation()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOrientationangle()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetPlane()Lcom/microsoft/schemas/office/office/STExtrusionPlane;
.end method

.method public abstract xgetRender()Lcom/microsoft/schemas/office/office/STExtrusionRender;
.end method

.method public abstract xgetRotationangle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRotationcenter()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShininess()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetSkewamt()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSkewangle()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetSpecularity()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/office/office/STExtrusionType;
.end method

.method public abstract xgetViewpoint()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetViewpointorigin()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAutorotationcenter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetBackdepth(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBrightness(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetColor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetColormode(Lcom/microsoft/schemas/office/office/STColorMode;)V
.end method

.method public abstract xsetDiffusity(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetEdge(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetFacet(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetForedepth(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLightface(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetLightharsh(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetLightharsh2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetLightlevel(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLightlevel2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLightposition(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLightposition2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLockrotationcenter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetMetal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetOrientation(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOrientationangle(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetPlane(Lcom/microsoft/schemas/office/office/STExtrusionPlane;)V
.end method

.method public abstract xsetRender(Lcom/microsoft/schemas/office/office/STExtrusionRender;)V
.end method

.method public abstract xsetRotationangle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRotationcenter(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShininess(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetSkewamt(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSkewangle(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetSpecularity(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/office/office/STExtrusionType;)V
.end method

.method public abstract xsetViewpoint(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetViewpointorigin(Lorg/apache/xmlbeans/XmlString;)V
.end method
