.class Lsun/font/LayoutPathImpl$SegmentPath$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl$SegmentPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Segment"
.end annotation


# instance fields
.field broken:Z

.field cx:D

.field cy:D

.field gp:Ljava/awt/geom/GeneralPath;

.field final ix:I

.field final temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

.field final synthetic this$0:Lsun/font/LayoutPathImpl$SegmentPath;

.field final ux:D

.field final uy:D


# direct methods
.method public constructor <init>(Lsun/font/LayoutPathImpl$SegmentPath;I)V
    .locals 6

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v0

    add-int/lit8 v1, p2, 0x2

    aget-wide v0, v0, v1

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v2

    aget-wide v2, v2, p2

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v4

    add-int/lit8 v5, p2, -0x3

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ux:D

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    aget-wide v2, v2, v3

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v4

    add-int/lit8 p2, p2, -0x2

    aget-wide v4, v4, p2

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->uy:D

    new-instance p2, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p1}, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;-><init>(Lsun/font/LayoutPathImpl$SegmentPath;)V

    iput-object p2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->broken:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->gp:Ljava/awt/geom/GeneralPath;

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->broken:Z

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->cy:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->cx:D

    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    iput-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->gp:Ljava/awt/geom/GeneralPath;

    return-void
.end method

.method public line(Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;)V
    .locals 12

    iget v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    iget-object v1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    invoke-virtual {p1, v0, v1}, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->pin(ILsun/font/LayoutPathImpl$SegmentPath$LineInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    iget-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {v2}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v2

    iget v3, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    iput-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object p1

    iget v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    add-int/lit8 v0, v0, -0x3

    aget-wide v0, p1, v0

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    iget-wide v2, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    iget-wide v4, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ux:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    iget-wide v4, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->uy:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object p1

    iget v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, p1, v2

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    iget-wide v4, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    iget-wide v6, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->uy:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    iget-wide v6, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ux:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    iget-object v6, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {v6}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v6

    iget v7, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    iput-wide v4, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object p1

    iget v4, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    add-int/lit8 v4, v4, -0x3

    aget-wide v4, p1, v4

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    iget-wide v6, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    iget-wide v8, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ux:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    iget-wide v8, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->uy:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {p1}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object p1

    iget v6, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ix:I

    add-int/lit8 v6, v6, -0x2

    aget-wide v6, p1, v6

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->temp:Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;

    iget-wide v8, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    iget-wide v10, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->uy:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-wide v8, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    iget-wide v10, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->ux:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-wide v8, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->cx:D

    cmpl-double p1, v0, v8

    if-nez p1, :cond_0

    iget-wide v8, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->cy:D

    cmpl-double p1, v2, v8

    if-eqz p1, :cond_2

    :cond_0
    iget-boolean p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->broken:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->gp:Ljava/awt/geom/GeneralPath;

    double-to-float v0, v0

    double-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/awt/geom/Path2D$Float;->moveTo(FF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->gp:Ljava/awt/geom/GeneralPath;

    double-to-float v0, v0

    double-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->gp:Ljava/awt/geom/GeneralPath;

    double-to-float v0, v4

    double-to-float v1, v6

    invoke-virtual {p1, v0, v1}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->broken:Z

    iput-wide v4, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->cx:D

    iput-wide v6, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->cy:D

    :cond_3
    return-void
.end method

.method public move()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$Segment;->broken:Z

    return-void
.end method
