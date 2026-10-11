.class Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl$SegmentPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LineInfo"
.end annotation


# instance fields
.field lx:D

.field ly:D

.field m:D

.field sx:D

.field sy:D

.field final synthetic this$0:Lsun/font/LayoutPathImpl$SegmentPath;


# direct methods
.method public constructor <init>(Lsun/font/LayoutPathImpl$SegmentPath;)V
    .locals 0

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pin(DDLsun/font/LayoutPathImpl$SegmentPath$LineInfo;)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 1
    invoke-virtual {v5, v0}, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->set(Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;)V

    .line 2
    iget-wide v6, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    iget-wide v8, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    cmpl-double v10, v6, v8

    const-wide/16 v12, 0x0

    if-ltz v10, :cond_4

    cmpg-double v10, v8, v3

    if-gez v10, :cond_9

    cmpl-double v10, v6, v1

    if-ltz v10, :cond_9

    cmpg-double v10, v8, v1

    if-gez v10, :cond_1

    .line 3
    iget-wide v14, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    cmpl-double v10, v14, v12

    if-eqz v10, :cond_0

    .line 4
    iget-wide v11, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    sub-double v8, v1, v8

    mul-double/2addr v14, v8

    add-double/2addr v11, v14

    iput-wide v11, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    .line 5
    :cond_0
    iput-wide v1, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    :cond_1
    cmpl-double v1, v6, v3

    if-lez v1, :cond_3

    .line 6
    iget-wide v1, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    const-wide/16 v8, 0x0

    cmpl-double v8, v1, v8

    if-eqz v8, :cond_2

    .line 7
    iget-wide v8, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    sub-double v6, v3, v6

    mul-double/2addr v1, v6

    add-double/2addr v8, v1

    iput-wide v8, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    .line 8
    :cond_2
    iput-wide v3, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    cmpg-double v11, v6, v3

    if-gez v11, :cond_9

    cmpl-double v11, v8, v1

    if-ltz v11, :cond_9

    cmpg-double v11, v6, v1

    if-gez v11, :cond_6

    .line 9
    iget-wide v11, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-eqz v15, :cond_5

    .line 10
    iget-wide v13, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    sub-double v6, v1, v6

    mul-double/2addr v11, v6

    add-double/2addr v13, v11

    iput-wide v13, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    .line 11
    :cond_5
    iput-wide v1, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    :cond_6
    cmpl-double v1, v8, v3

    if-lez v1, :cond_8

    .line 12
    iget-wide v1, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    const-wide/16 v6, 0x0

    cmpl-double v6, v1, v6

    if-eqz v6, :cond_7

    .line 13
    iget-wide v6, v0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    sub-double v8, v3, v8

    mul-double/2addr v1, v8

    add-double/2addr v6, v1

    iput-wide v6, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    .line 14
    :cond_7
    iput-wide v3, v5, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public pin(ILsun/font/LayoutPathImpl$SegmentPath$LineInfo;)Z
    .locals 10

    .line 15
    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {v0}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-wide v0, v0, v1

    .line 16
    iget-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {v2}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v2

    add-int/lit8 v3, p1, 0x2

    aget-wide v2, v2, v3

    .line 17
    iget-object v4, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    iget-object v4, v4, Lsun/font/LayoutPathImpl$SegmentPath;->etype:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 18
    :cond_2
    iget-object v5, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->this$0:Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-static {v5}, Lsun/font/LayoutPathImpl$SegmentPath;->access$000(Lsun/font/LayoutPathImpl$SegmentPath;)[D

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :goto_1
    move-object v4, p0

    move-object v9, p2

    .line 19
    invoke-virtual/range {v4 .. v9}, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->pin(DDLsun/font/LayoutPathImpl$SegmentPath$LineInfo;)Z

    move-result p0

    return p0
.end method

.method public set(DDDD)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    .line 2
    iput-wide p3, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    .line 3
    iput-wide p5, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    .line 4
    iput-wide p7, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    sub-double/2addr p5, p1

    const-wide/16 p1, 0x0

    cmpl-double v0, p5, p1

    if-nez v0, :cond_0

    .line 5
    iput-wide p1, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    goto :goto_0

    :cond_0
    sub-double/2addr p7, p3

    div-double/2addr p7, p5

    .line 6
    iput-wide p7, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    :goto_0
    return-void
.end method

.method public set(Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;)V
    .locals 2

    .line 7
    iget-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sx:D

    .line 8
    iget-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->sy:D

    .line 9
    iget-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->lx:D

    .line 10
    iget-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->ly:D

    .line 11
    iget-wide v0, p1, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPath$LineInfo;->m:D

    return-void
.end method
