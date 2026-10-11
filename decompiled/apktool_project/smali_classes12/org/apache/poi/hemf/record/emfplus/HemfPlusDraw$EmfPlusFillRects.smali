.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusFillRects"
.end annotation


# instance fields
.field private brushId:I

.field private flags:I

.field private final rectData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->rectData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-interface {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->applyColor(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    new-instance v1, Ljava/awt/geom/Area;

    invoke-direct {v1}, Ljava/awt/geom/Area;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->rectData:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/iph;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/iph;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/jph;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/jph;-><init>(Ljava/awt/geom/Area;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPenStyle()Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->fill(Ljava/awt/Shape;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    throw p1
.end method

.method public getBrushIdValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->brushId:I

    return p0
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->fillRects:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->flags:I

    return p0
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

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/eph;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;)V

    const-string v2, "brushId"

    new-instance v3, Lcom/sunia/HTREnginev2/fph;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/fph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;)V

    const-string v4, "brushColor"

    new-instance v5, Lcom/sunia/HTREnginev2/gph;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/gph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;)V

    const-string v6, "rectData"

    new-instance v7, Lcom/sunia/HTREnginev2/hph;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/hph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getRectData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->rectData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->brushId:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->getReadRect()Ljava/util/function/BiFunction;

    move-result-object p3

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->rectData:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/16 p4, 0x8

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p2, :cond_0

    new-instance p6, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p6}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-interface {p3, p1, p6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;->rectData:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    int-to-long p0, p4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
