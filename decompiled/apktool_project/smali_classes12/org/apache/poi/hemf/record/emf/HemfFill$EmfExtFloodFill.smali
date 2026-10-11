.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtFloodFill;
.super Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfExtFloodFill"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->extFloodFill:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtFloodFill;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtFloodFill;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfFloodFill;->start:Ljava/awt/geom/Point2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p2

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfFloodFill;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p4, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p4

    int-to-long p4, p4

    add-long/2addr p2, p4

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->values()[Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    move-result-object p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int p1, v0

    aget-object p1, p4, p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;->mode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    const-wide/16 p0, 0x4

    add-long/2addr p2, p0

    return-wide p2
.end method
