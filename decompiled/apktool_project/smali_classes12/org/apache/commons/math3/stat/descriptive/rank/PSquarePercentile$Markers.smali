.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Markers"
.end annotation


# static fields
.field private static final HIGH:I = 0x4

.field private static final LOW:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient k:I

.field private final markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;


# direct methods
.method private constructor <init>(Ljava/util/List;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;D)V"
        }
    .end annotation

    .line 9
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->createMarkerArray(Ljava/util/List;D)[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>([Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;DLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>(Ljava/util/List;D)V

    return-void
.end method

.method private constructor <init>([Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move v0, v3

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object p1, v3, p1

    invoke-static {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 8
    iget-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, p1, v1

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object p0, p0, v1

    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-void
.end method

.method private adjustHeightsOfMarkers()V
    .locals 2

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->estimate(I)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createMarkerArray(Ljava/util/List;D)[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;D)[",
            "Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v11, 0x5

    if-lt v1, v11, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x6

    new-array v12, v1, [Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    const/4 v2, 0x0

    aput-object v1, v12, v2

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/16 v18, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const/16 v22, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v22}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    const/4 v2, 0x1

    aput-object v1, v12, v2

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v25, p1, v23

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    add-double v16, v25, v27

    div-double v18, p1, v23

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-object v13, v1

    invoke-direct/range {v13 .. v22}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    const/4 v2, 0x2

    aput-object v1, v12, v2

    new-instance v13, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, p1

    add-double v4, v4, v27

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/4 v10, 0x0

    move-object v1, v13

    move-wide/from16 v6, p1

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    const/4 v1, 0x3

    aput-object v13, v12, v1

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    add-double v32, v25, v3

    add-double v3, p1, v27

    div-double v34, v3, v23

    const-wide/high16 v36, 0x4010000000000000L    # 4.0

    const/16 v38, 0x0

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v38}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    const/4 v1, 0x4

    aput-object v2, v12, v1

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    move-object v13, v2

    invoke-direct/range {v13 .. v22}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    aput-object v2, v12, v11

    return-object v12

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private findCellAndUpdateMinMax(D)I
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v1

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_2

    iput v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_3

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_4

    iput v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v2, v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D

    iput v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    :goto_0
    iget p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    return p0
.end method

.method private incrementPositions(III)V
    .locals 1

    :goto_0
    if-gt p2, p3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, p2

    invoke-static {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$700(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object p1, v3, p1

    invoke-static {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, p1, v1

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object p0, p0, v1

    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-void
.end method

.method private updateDesiredPositions()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$800(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$a;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v2, v1, v3

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x5

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>([Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public estimate(I)D
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$600(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public getPercentileValue()D
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public height(I)D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    if-lez p1, :cond_0

    aget-object p0, v0, p1

    invoke-static {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$500(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public processDataPoint(D)D
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->findCellAndUpdateMinMax(D)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    const/4 v0, 0x5

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->incrementPositions(III)V

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->updateDesiredPositions()V

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->adjustHeightsOfMarkers()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->getPercentileValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v4, 0x5

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "m1=[%s],m2=[%s],m3=[%s],m4=[%s],m5=[%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
