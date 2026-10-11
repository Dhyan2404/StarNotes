.class public Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;
.super Lorg/apache/poi/hwmf/record/HwmfPalette$WmfSetPaletteEntries;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetPaletteEntries"
.end annotation


# instance fields
.field paletteIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfSetPaletteEntries;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;->paletteIndex:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setPaletteEntries:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/klh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/klh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;)V

    new-instance v1, Lcom/sunia/HTREnginev2/llh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/llh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;)V

    const-string p0, "base"

    const-string v2, "paletteIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getPaletteIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;->paletteIndex:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetPaletteEntries;->paletteIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->start:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwmf/record/HwmfPalette$WmfPaletteParent;->readPaletteEntries(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 p2, 0xc

    add-long/2addr p0, p2

    return-wide p0
.end method
