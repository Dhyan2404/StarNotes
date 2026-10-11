.class public Lorg/apache/poi/hwmf/record/HwmfPalette$WmfResizePalette;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfResizePalette"
.end annotation


# instance fields
.field protected numberOfEntries:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPalette()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget v2, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfResizePalette;->numberOfEntries:I

    if-ge v1, v2, :cond_1

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-direct {v2}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-interface {v0, p0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPalette(Ljava/util/List;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/o6i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/o6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPalette$WmfResizePalette;)V

    const-string p0, "numberOfEntries"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfEntries()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfResizePalette;->numberOfEntries:I

    return p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->resizePalette:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfResizePalette;->numberOfEntries:I

    const/4 p0, 0x2

    return p0
.end method
