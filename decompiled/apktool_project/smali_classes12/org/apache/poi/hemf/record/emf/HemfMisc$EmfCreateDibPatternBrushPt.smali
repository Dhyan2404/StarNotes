.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;
.super Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCreateDibPatternBrushPt"
.end annotation


# instance fields
.field protected brushIdx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;-><init>()V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;->brushIdx:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V

    return-void
.end method

.method public getBrushIdx()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;->brushIdx:I

    return p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->createDibPatternBrushPt:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/okh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/okh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;)V

    new-instance v1, Lcom/sunia/HTREnginev2/pkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;)V

    const-string p0, "base"

    const-string v2, "brushIdx"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v2

    sget-object p2, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERNPT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->style:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateDibPatternBrushPt;->brushIdx:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v6

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const/16 p0, 0x18

    int-to-long p2, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J

    move-result-wide p0

    add-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
