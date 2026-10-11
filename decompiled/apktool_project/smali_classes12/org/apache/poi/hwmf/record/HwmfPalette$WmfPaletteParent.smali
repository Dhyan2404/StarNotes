.class public abstract Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;
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
    accessFlags = 0x409
    name = "WmfPaletteParent"
.end annotation


# instance fields
.field protected final palette:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->palette:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/m6i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/m6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;)V

    new-instance v1, Lcom/sunia/HTREnginev2/n6i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;)V

    const-string p0, "paletteStart"

    const-string v2, "pallete"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPaletteCopy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->palette:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-direct {v2, v1}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;-><init>(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPaletteStart()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->start:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->start:I

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->readPaletteEntries(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public readPaletteEntries(Lorg/apache/poi/util/LittleEndianInputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-le p2, v0, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    :goto_1
    if-ge v2, v1, :cond_2

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->palette:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return p2
.end method
