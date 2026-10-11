.class public Lsun/java2d/pipe/SpanClipRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/CompositePipe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;
    }
.end annotation


# static fields
.field static RegionClass:Ljava/lang/Class;

.field static RegionIteratorClass:Ljava/lang/Class;


# instance fields
.field outpipe:Lsun/java2d/pipe/CompositePipe;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lsun/java2d/pipe/Region;

    sput-object v0, Lsun/java2d/pipe/SpanClipRenderer;->RegionClass:Ljava/lang/Class;

    const-class v1, Lsun/java2d/pipe/RegionIterator;

    sput-object v1, Lsun/java2d/pipe/SpanClipRenderer;->RegionIteratorClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lsun/java2d/pipe/SpanClipRenderer;->initIDs(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lsun/java2d/pipe/CompositePipe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/pipe/SpanClipRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    return-void
.end method

.method public static initIDs(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public endSequence(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;

    iget-object p0, p0, Lsun/java2d/pipe/SpanClipRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    iget-object p1, p1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->outcontext:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lsun/java2d/pipe/CompositePipe;->endSequence(Ljava/lang/Object;)V

    return-void
.end method

.method public native eraseTile(Lsun/java2d/pipe/RegionIterator;[BII[I)V
.end method

.method public native fillTile(Lsun/java2d/pipe/RegionIterator;[BII[I)V
.end method

.method public needTile(Ljava/lang/Object;IIII)Z
    .locals 6

    check-cast p1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;

    iget-object v0, p0, Lsun/java2d/pipe/SpanClipRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    iget-object v1, p1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->outcontext:Ljava/lang/Object;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/CompositePipe;->needTile(Ljava/lang/Object;IIII)Z

    move-result p0

    return p0
.end method

.method public renderPathTile(Ljava/lang/Object;[BIIIIII)V
    .locals 18

    .line 2
    move-object/from16 v6, p1

    check-cast v6, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;

    .line 3
    iget-object v0, v6, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->iterator:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v0}, Lsun/java2d/pipe/RegionIterator;->createCopy()Lsun/java2d/pipe/RegionIterator;

    move-result-object v8

    .line 4
    iget-object v13, v6, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->band:[I

    const/4 v14, 0x0

    .line 5
    aput p5, v13, v14

    const/4 v15, 0x1

    .line 6
    aput p6, v13, v15

    add-int v0, p5, p7

    const/16 v16, 0x2

    .line 7
    aput v0, v13, v16

    add-int v0, p6, p8

    const/16 v17, 0x3

    .line 8
    aput v0, v13, v17

    if-nez p2, :cond_2

    mul-int v0, p7, p8

    .line 9
    iget-object v1, v6, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->tile:[B

    if-eqz v1, :cond_0

    .line 10
    array-length v2, v1

    if-ge v2, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_1

    .line 11
    new-array v0, v0, [B

    .line 12
    iput-object v0, v6, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->tile:[B

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    move v3, v9

    move/from16 v4, p7

    move-object v5, v13

    .line 13
    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/SpanClipRenderer;->fillTile(Lsun/java2d/pipe/RegionIterator;[BII[I)V

    move/from16 v0, p7

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object v12, v13

    .line 14
    invoke-virtual/range {v7 .. v12}, Lsun/java2d/pipe/SpanClipRenderer;->eraseTile(Lsun/java2d/pipe/RegionIterator;[BII[I)V

    move-object/from16 v7, p2

    move/from16 v9, p3

    move/from16 v0, p4

    .line 15
    :goto_1
    aget v1, v13, v16

    aget v2, v13, v14

    if-le v1, v2, :cond_3

    aget v3, v13, v17

    aget v4, v13, v15

    if-le v3, v4, :cond_3

    sub-int v5, v4, p6

    mul-int/2addr v5, v0

    sub-int v8, v2, p5

    add-int/2addr v5, v8

    add-int/2addr v5, v9

    move-object/from16 v8, p0

    .line 16
    iget-object v8, v8, Lsun/java2d/pipe/SpanClipRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    iget-object v6, v6, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->outcontext:Ljava/lang/Object;

    sub-int/2addr v1, v2

    sub-int/2addr v3, v4

    move-object/from16 p0, v8

    move-object/from16 p1, v6

    move-object/from16 p2, v7

    move/from16 p3, v5

    move/from16 p4, v0

    move/from16 p5, v2

    move/from16 p6, v4

    move/from16 p7, v1

    move/from16 p8, v3

    invoke-interface/range {p0 .. p8}, Lsun/java2d/pipe/CompositePipe;->renderPathTile(Ljava/lang/Object;[BIIIIII)V

    :cond_3
    return-void
.end method

.method public renderPathTile(Ljava/lang/Object;[BIIIIIILsun/java2d/pipe/ShapeSpanIterator;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lsun/java2d/pipe/SpanClipRenderer;->renderPathTile(Ljava/lang/Object;[BIIIIII)V

    return-void
.end method

.method public skipTile(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;

    iget-object p0, p0, Lsun/java2d/pipe/SpanClipRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    iget-object p1, p1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;->outcontext:Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lsun/java2d/pipe/CompositePipe;->skipTile(Ljava/lang/Object;II)V

    return-void
.end method

.method public startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getIterator()Lsun/java2d/pipe/RegionIterator;

    move-result-object v0

    new-instance v1, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;

    iget-object v2, p0, Lsun/java2d/pipe/SpanClipRenderer;->outpipe:Lsun/java2d/pipe/CompositePipe;

    invoke-interface {v2, p1, p2, p3, p4}, Lsun/java2d/pipe/CompositePipe;->startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lsun/java2d/pipe/SpanClipRenderer$SCRcontext;-><init>(Lsun/java2d/pipe/SpanClipRenderer;Lsun/java2d/pipe/RegionIterator;Ljava/lang/Object;)V

    return-object v1
.end method
