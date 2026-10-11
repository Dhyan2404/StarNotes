.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfPatBlt"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;

.field private rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;->bounds:Ljava/awt/geom/Rectangle2D;

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

    new-instance v0, Lcom/sunia/HTREnginev2/t3i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;)V

    new-instance v1, Lcom/sunia/HTREnginev2/u3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;)V

    const-string p0, "rasterOperation"

    const-string v2, "bounds"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRasterOperation()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->patBlt:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method
