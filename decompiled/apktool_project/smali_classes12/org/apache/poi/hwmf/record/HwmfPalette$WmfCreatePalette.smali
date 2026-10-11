.class public Lorg/apache/poi/hwmf/record/HwmfPalette$WmfCreatePalette;
.super Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfCreatePalette"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;-><init>()V

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->getPaletteCopy()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPalette(Ljava/util/List;)V

    return-void
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->createPalette:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method
