.class Lsun/font/LayoutPathImpl$SegmentPath$Mapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl$SegmentPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mapper"
.end annotation


# instance fields
.field final cpt:Ljava/awt/geom/Point2D$Double;

.field haveMT:Z

.field final li:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

.field final mpt:Ljava/awt/geom/Point2D$Double;

.field final segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/font/LayoutPathImpl$SegmentPath$Segment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/font/LayoutPathImpl$SegmentPath;


# direct methods
.method public constructor <init>(Lsun/font/LayoutPathImpl$SegmentPath;)V
    .locals 5

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;-><init>(Lsun/font/LayoutPathImpl$SegmentPath;)V

    iput-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->li:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    const/4 v0, 0x3

    :goto_0
    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v1

    add-int/lit8 v2, v0, 0x2

    aget-wide v1, v1, v2

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    new-instance v2, Lsun/font/LayoutPathImpl$SegmentPath$Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p1, v0}, Lsun/font/LayoutPathImpl$SegmentPath$Segment;-><init>(Lsun/font/LayoutPathImpl$SegmentPath;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->mpt:Ljava/awt/geom/Point2D$Double;

    new-instance p1, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->cpt:Ljava/awt/geom/Point2D$Double;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->mpt:Ljava/awt/geom/Point2D$Double;

    iget-wide v1, v0, Ljava/awt/geom/Point2D$Double;->x:D

    iget-wide v3, v0, Ljava/awt/geom/Point2D$Double;->y:D

    invoke-virtual {p0, v1, v2, v3, v4}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->lineTo(DD)V

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;

    invoke-virtual {v0}, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->haveMT:Z

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;

    invoke-virtual {v0}, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public lineTo(DD)V
    .locals 11

    iget-boolean v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->haveMT:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->cpt:Ljava/awt/geom/Point2D$Double;

    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->mpt:Ljava/awt/geom/Point2D$Double;

    iget-wide v3, v2, Ljava/awt/geom/Point2D$Double;->x:D

    iput-wide v3, v1, Ljava/awt/geom/Point2D$Double;->x:D

    iget-wide v2, v2, Ljava/awt/geom/Point2D$Double;->y:D

    iput-wide v2, v1, Ljava/awt/geom/Point2D$Double;->y:D

    :cond_0
    iget-object v1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->cpt:Ljava/awt/geom/Point2D$Double;

    iget-wide v2, v1, Ljava/awt/geom/Point2D$Double;->x:D

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    iget-wide v1, v1, Ljava/awt/geom/Point2D$Double;->y:D

    cmpl-double v1, p3, v1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->haveMT:Z

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/LayoutPathImpl$SegmentPath$Segment;

    invoke-virtual {v1}, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->move()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->li:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->cpt:Ljava/awt/geom/Point2D$Double;

    iget-wide v3, v0, Ljava/awt/geom/Point2D$Double;->x:D

    iget-wide v5, v0, Ljava/awt/geom/Point2D$Double;->y:D

    move-wide v7, p1

    move-wide v9, p3

    invoke-virtual/range {v2 .. v10}, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->set(DDDD)V

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/font/LayoutPathImpl$SegmentPath$Segment;

    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->li:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    invoke-virtual {v1, v2}, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->line(Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->cpt:Ljava/awt/geom/Point2D$Double;

    iput-wide p1, p0, Ljava/awt/geom/Point2D$Double;->x:D

    iput-wide p3, p0, Ljava/awt/geom/Point2D$Double;->y:D

    :cond_4
    return-void
.end method

.method public mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 5

    const/4 v0, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v0, v1, v2}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;

    move-result-object p1

    invoke-virtual {p0}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->init()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    :goto_0
    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-interface {p1, v0}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->close()V

    goto :goto_1

    :cond_1
    aget-wide v1, v0, v2

    aget-wide v3, v0, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->lineTo(DD)V

    goto :goto_1

    :cond_2
    aget-wide v1, v0, v2

    aget-wide v3, v0, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->moveTo(DD)V

    :goto_1
    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/awt/geom/GeneralPath;

    invoke-direct {p1}, Ljava/awt/geom/GeneralPath;-><init>()V

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->segments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;

    iget-object v0, v0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->gp:Ljava/awt/geom/GeneralPath;

    invoke-virtual {p1, v0, v2}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public moveTo(DD)V
    .locals 1

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->mpt:Ljava/awt/geom/Point2D$Double;

    iput-wide p1, v0, Ljava/awt/geom/Point2D$Double;->x:D

    iput-wide p3, v0, Ljava/awt/geom/Point2D$Double;->y:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Mapper;->haveMT:Z

    return-void
.end method
