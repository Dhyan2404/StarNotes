.class public Lorg/apache/poi/hwmf/record/HwmfPalette$WmfSetPaletteEntries;
.super Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfSetPaletteEntries"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;-><init>()V

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPalette()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->getPaletteStart()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-direct {v3}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->getPaletteCopy()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPalette(Ljava/util/List;)V

    return-void
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setPalEntries:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method
