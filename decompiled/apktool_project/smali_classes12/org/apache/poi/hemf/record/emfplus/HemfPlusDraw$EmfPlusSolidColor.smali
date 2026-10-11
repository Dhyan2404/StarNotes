.class public interface abstract Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmfPlusSolidColor"
.end annotation


# static fields
.field public static final SOLID_COLOR:Lorg/apache/poi/util/BitField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->SOLID_COLOR:Lorg/apache/poi/util/BitField;

    return-void
.end method


# virtual methods
.method public applyColor(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->isSolidColor()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    new-instance p1, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getSolidColor()Ljava/awt/Color;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getBrushId()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    :goto_0
    return-void
.end method

.method public getBrushId()I
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->isSolidColor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getBrushIdValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract getBrushIdValue()I
.end method

.method public abstract getFlags()I
.end method

.method public getSolidColor()Ljava/awt/Color;
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->isSolidColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getBrushIdValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSolidColor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->SOLID_COLOR:Lorg/apache/poi/util/BitField;

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
