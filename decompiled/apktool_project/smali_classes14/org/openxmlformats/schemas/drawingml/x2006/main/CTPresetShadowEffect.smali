.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;",
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

    const-string v2, "ctpresetshadoweffecta9abtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetShadowEffect;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract addNewPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract addNewSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract getDir()I
.end method

.method public abstract getDist()J
.end method

.method public abstract getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;
.end method

.method public abstract getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetDist()Z
.end method

.method public abstract isSetHslClr()Z
.end method

.method public abstract isSetPrstClr()Z
.end method

.method public abstract isSetSchemeClr()Z
.end method

.method public abstract isSetScrgbClr()Z
.end method

.method public abstract isSetSrgbClr()Z
.end method

.method public abstract isSetSysClr()Z
.end method

.method public abstract setDir(I)V
.end method

.method public abstract setDist(J)V
.end method

.method public abstract setHslClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;)V
.end method

.method public abstract setPrstClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setSchemeClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setScrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSysClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetDist()V
.end method

.method public abstract unsetHslClr()V
.end method

.method public abstract unsetPrstClr()V
.end method

.method public abstract unsetSchemeClr()V
.end method

.method public abstract unsetScrgbClr()V
.end method

.method public abstract unsetSrgbClr()V
.end method

.method public abstract unsetSysClr()V
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;
.end method

.method public abstract xgetDist()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;)V
.end method

.method public abstract xsetDist(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;)V
.end method
