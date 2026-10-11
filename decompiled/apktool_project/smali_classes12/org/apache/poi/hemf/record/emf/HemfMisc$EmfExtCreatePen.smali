.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;
.super Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfExtCreatePen"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field protected hatchStyle:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;-><init>()V

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method

.method public getBrushStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->extCreatePen:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lcom/sunia/HTREnginev2/wkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;)V

    const-string v2, "brushStyle"

    new-instance v3, Lcom/sunia/HTREnginev2/xkh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;)V

    const-string v4, "hatchStyle"

    new-instance v5, Lcom/sunia/HTREnginev2/ykh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ykh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;)V

    const-string v6, "bitmap"

    new-instance v7, Lcom/sunia/HTREnginev2/zkh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/zkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getHatchStyle()Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->hatchStyle:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 9
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

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfCreatePen;->penIndex:I

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

    long-to-int v6, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->valueOf(I)Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p3

    iget-object p5, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->dimension:Ljava/awt/geom/Dimension2D;

    long-to-double p3, p3

    const-wide/16 v0, 0x0

    invoke-virtual {p5, p3, p4, v0, v1}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-static {p3}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    iget-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p3, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p3

    const/16 p4, 0x20

    add-int/2addr p4, p3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p3

    invoke-static {p3}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->hatchStyle:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    add-int/lit8 p4, p4, 0x4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p4, p4, 0x4

    new-array p5, p3, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v7

    long-to-int v1, v7

    int-to-float v1, v1

    aput v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->getLineDash()Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->USERSTYLE:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, p5}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->setLineDashes([F)V

    :cond_1
    mul-int/lit8 p3, p3, 0x4

    invoke-static {p4, p3}, Ljava/lang/Math;->addExact(II)I

    move-result p2

    int-to-long p2, p2

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfExtCreatePen;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

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
