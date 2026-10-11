.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;
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
    name = "EmfExtSelectClipRgn"
.end annotation


# instance fields
.field protected regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field protected final rgnRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->rgnRects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->getShape()Ljava/awt/Shape;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setClip(Ljava/awt/Shape;Lorg/apache/poi/hwmf/record/HwmfRegionMode;Z)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->extSelectClipRgn:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/gih;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;)V

    new-instance v1, Lcom/sunia/HTREnginev2/hih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;)V

    const-string p0, "regionMode"

    const-string v2, "rgnRects"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRegionMode()Lorg/apache/poi/hwmf/record/HwmfRegionMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    return-object p0
.end method

.method public getRgnRects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->rgnRects:Ljava/util/List;

    return-object p0
.end method

.method public getShape()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->rgnRects:Ljava/util/List;

    invoke-static {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->getRgnShape(Ljava/util/List;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    sget-object p3, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COPY:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-wide/16 p4, 0x8

    if-eq p2, p3, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;->rgnRects:Ljava/util/List;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readRgnData(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/List;)J

    move-result-wide p0

    add-long/2addr p4, p0

    :cond_0
    return-wide p4
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
