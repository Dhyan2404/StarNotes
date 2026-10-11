.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetDiBitsToDevice"
.end annotation


# instance fields
.field protected final bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected final bounds:Ljava/awt/geom/Rectangle2D;

.field protected final dest:Ljava/awt/geom/Point2D;

.field protected final src:Ljava/awt/geom/Rectangle2D;

.field protected usageSrc:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->bounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->dest:Ljava/awt/geom/Point2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->src:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-void
.end method


# virtual methods
.method public getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getDest()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->dest:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setDiBitsToDevice:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "bounds"

    new-instance v1, Lcom/sunia/HTREnginev2/qih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;)V

    const-string v2, "dest"

    new-instance v3, Lcom/sunia/HTREnginev2/rih;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/rih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;)V

    const-string v4, "src"

    new-instance v5, Lcom/sunia/HTREnginev2/sih;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/sih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;)V

    const-string v6, "usageSrc"

    new-instance v7, Lcom/sunia/HTREnginev2/tih;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/tih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;)V

    const-string v8, "bitmap"

    new-instance v9, Lcom/sunia/HTREnginev2/uih;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/uih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSrc()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->src:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getUsageSrc()Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->usageSrc:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

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

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide p2

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->dest:Ljava/awt/geom/Point2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p4

    add-long/2addr p2, p4

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->src:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p4

    int-to-long p4, p4

    add-long/2addr p2, p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int v3, p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int v4, p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int v5, p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int v6, p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int p4, p4

    invoke-static {p4}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->usageSrc:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    const-wide/16 p4, 0x1c

    add-long/2addr p2, p4

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J

    move-result-wide p0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
