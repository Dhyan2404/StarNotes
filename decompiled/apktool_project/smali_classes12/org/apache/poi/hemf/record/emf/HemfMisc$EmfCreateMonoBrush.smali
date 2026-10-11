.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCreateMonoBrush"
.end annotation


# instance fields
.field protected final bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

.field protected penIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushBitmap(Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->penIndex:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V

    return-void
.end method

.method public getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method

.method public getColorUsage()Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->createMonoBrush:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "penIndex"

    new-instance v1, Lcom/sunia/HTREnginev2/qkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;)V

    const-string v2, "colorUsage"

    new-instance v3, Lcom/sunia/HTREnginev2/rkh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/rkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;)V

    const-string v4, "bitmap"

    new-instance v5, Lcom/sunia/HTREnginev2/skh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/skh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPenIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->penIndex:I

    return p0
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

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->penIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int v3, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int v4, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int v5, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    const/16 p2, 0x18

    int-to-long p2, p2

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreateMonoBrush;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J

    move-result-wide p0

    add-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
