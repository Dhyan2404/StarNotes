.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;
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
    name = "EmfInvertRgn"
.end annotation


# instance fields
.field protected final bounds:Ljava/awt/geom/Rectangle2D;

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

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->bounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->rgnRects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->invertRgn:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/oih;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/oih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;)V

    new-instance v1, Lcom/sunia/HTREnginev2/pih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;)V

    const-string p0, "bounds"

    const-string v2, "rgnRects"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

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

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->rgnRects:Ljava/util/List;

    return-object p0
.end method

.method public getShape()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->rgnRects:Ljava/util/List;

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

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    const-wide/16 p4, 0x4

    add-long/2addr p2, p4

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;->rgnRects:Ljava/util/List;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readRgnData(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/List;)J

    move-result-wide p0

    add-long/2addr p2, p0

    return-wide p2
.end method
