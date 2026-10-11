.class public Lorg/apache/poi/hwmf/record/HwmfPalette$WmfAnimatePalette;
.super Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfAnimatePalette"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;-><init>()V

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPalette()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->getPaletteCopy()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->getPaletteStart()I

    move-result p0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v2, p0, :cond_1

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-direct {v3}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int v5, p0, v2

    if-gt v4, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-virtual {v4}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->isReserved()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPalette(Ljava/util/List;)V

    return-void
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->animatePalette:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method
