.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfEof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfEof"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfEof;->palette:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->eof:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/vkh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfEof;)V

    const-string p0, "palette"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPalette()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfEof;->palette:Ljava/util/List;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int p0, p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int p4, p4

    const/16 p5, 0x8

    if-lez p0, :cond_1

    if-lez p4, :cond_1

    add-int/lit8 p4, p4, -0x10

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    add-int/2addr p5, p4

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p0, :cond_0

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v0

    add-int/2addr p5, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, p5

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x4

    sub-long/2addr p2, v0

    long-to-int p0, p2

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    add-int/2addr p5, p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    add-int/lit8 p5, p5, 0x4

    int-to-long p0, p5

    return-wide p0
.end method
