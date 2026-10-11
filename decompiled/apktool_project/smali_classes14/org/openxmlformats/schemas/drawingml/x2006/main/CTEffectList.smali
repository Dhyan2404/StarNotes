.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;",
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

    const-string v2, "cteffectlist6featype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBlur()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract addNewFillOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract addNewGlow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;
.end method

.method public abstract addNewInnerShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;
.end method

.method public abstract addNewOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
.end method

.method public abstract addNewPrstShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;
.end method

.method public abstract addNewReflection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;
.end method

.method public abstract addNewSoftEdge()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;
.end method

.method public abstract getBlur()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract getFillOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract getGlow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;
.end method

.method public abstract getInnerShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;
.end method

.method public abstract getOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
.end method

.method public abstract getPrstShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;
.end method

.method public abstract getReflection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;
.end method

.method public abstract getSoftEdge()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;
.end method

.method public abstract isSetBlur()Z
.end method

.method public abstract isSetFillOverlay()Z
.end method

.method public abstract isSetGlow()Z
.end method

.method public abstract isSetInnerShdw()Z
.end method

.method public abstract isSetOuterShdw()Z
.end method

.method public abstract isSetPrstShdw()Z
.end method

.method public abstract isSetReflection()Z
.end method

.method public abstract isSetSoftEdge()Z
.end method

.method public abstract setBlur(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;)V
.end method

.method public abstract setFillOverlay(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;)V
.end method

.method public abstract setGlow(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGlowEffect;)V
.end method

.method public abstract setInnerShdw(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInnerShadowEffect;)V
.end method

.method public abstract setOuterShdw(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;)V
.end method

.method public abstract setPrstShdw(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;)V
.end method

.method public abstract setReflection(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTReflectionEffect;)V
.end method

.method public abstract setSoftEdge(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSoftEdgesEffect;)V
.end method

.method public abstract unsetBlur()V
.end method

.method public abstract unsetFillOverlay()V
.end method

.method public abstract unsetGlow()V
.end method

.method public abstract unsetInnerShdw()V
.end method

.method public abstract unsetOuterShdw()V
.end method

.method public abstract unsetPrstShdw()V
.end method

.method public abstract unsetReflection()V
.end method

.method public abstract unsetSoftEdge()V
.end method
