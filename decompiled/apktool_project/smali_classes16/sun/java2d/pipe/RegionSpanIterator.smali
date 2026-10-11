.class public Lsun/java2d/pipe/RegionSpanIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/SpanIterator;


# instance fields
.field curhiy:I

.field curloy:I

.field done:Z

.field hix:I

.field hiy:I

.field isrect:Z

.field lox:I

.field loy:I

.field ri:Lsun/java2d/pipe/RegionIterator;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/Region;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->done:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Lsun/java2d/pipe/Region;->getBounds([I)V

    aget v0, v1, v0

    iput v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->lox:I

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    const/4 v0, 0x2

    aget v0, v1, v0

    iput v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->hix:I

    const/4 v0, 0x3

    aget v0, v1, v0

    iput v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->hiy:I

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v0

    iput-boolean v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->isrect:Z

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getIterator()Lsun/java2d/pipe/RegionIterator;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->ri:Lsun/java2d/pipe/RegionIterator;

    return-void
.end method


# virtual methods
.method public getNativeIterator()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPathBox([I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/java2d/pipe/RegionSpanIterator;->lox:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lsun/java2d/pipe/RegionSpanIterator;->hix:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget p0, p0, Lsun/java2d/pipe/RegionSpanIterator;->hiy:I

    aput p0, p1, v0

    return-void
.end method

.method public intersectClipBox(IIII)V
    .locals 1

    iget v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->lox:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->lox:I

    :cond_0
    iget p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    if-le p2, p1, :cond_1

    iput p2, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    :cond_1
    iget p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->hix:I

    if-ge p3, p1, :cond_2

    iput p3, p0, Lsun/java2d/pipe/RegionSpanIterator;->hix:I

    :cond_2
    iget p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->hiy:I

    if-ge p4, p1, :cond_3

    iput p4, p0, Lsun/java2d/pipe/RegionSpanIterator;->hiy:I

    :cond_3
    iget p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->lox:I

    iget p2, p0, Lsun/java2d/pipe/RegionSpanIterator;->hix:I

    if-ge p1, p2, :cond_5

    iget p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    iget p2, p0, Lsun/java2d/pipe/RegionSpanIterator;->hiy:I

    if-lt p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->done:Z

    return-void
.end method

.method public nextSpan([I)Z
    .locals 9

    iget-boolean v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->isrect:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/RegionSpanIterator;->getPathBox([I)V

    iput-boolean v2, p0, Lsun/java2d/pipe/RegionSpanIterator;->done:Z

    return v2

    :cond_1
    iget v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->curloy:I

    iget v3, p0, Lsun/java2d/pipe/RegionSpanIterator;->curhiy:I

    :cond_2
    iget-object v4, p0, Lsun/java2d/pipe/RegionSpanIterator;->ri:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v4, p1}, Lsun/java2d/pipe/RegionIterator;->nextXBand([I)Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_6

    iget-object v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->ri:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/RegionIterator;->nextYRange([I)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lsun/java2d/pipe/RegionSpanIterator;->done:Z

    return v1

    :cond_3
    aget v0, p1, v2

    aget v3, p1, v5

    iget v4, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    if-ge v0, v4, :cond_4

    move v0, v4

    :cond_4
    iget v4, p0, Lsun/java2d/pipe/RegionSpanIterator;->hiy:I

    if-le v3, v4, :cond_5

    move v3, v4

    :cond_5
    if-lt v0, v4, :cond_2

    iput-boolean v2, p0, Lsun/java2d/pipe/RegionSpanIterator;->done:Z

    return v1

    :cond_6
    aget v4, p1, v1

    const/4 v6, 0x2

    aget v7, p1, v6

    iget v8, p0, Lsun/java2d/pipe/RegionSpanIterator;->lox:I

    if-ge v4, v8, :cond_7

    move v4, v8

    :cond_7
    iget v8, p0, Lsun/java2d/pipe/RegionSpanIterator;->hix:I

    if-le v7, v8, :cond_8

    move v7, v8

    :cond_8
    if-ge v4, v7, :cond_2

    if-ge v0, v3, :cond_2

    aput v4, p1, v1

    iput v0, p0, Lsun/java2d/pipe/RegionSpanIterator;->curloy:I

    aput v0, p1, v2

    aput v7, p1, v6

    iput v3, p0, Lsun/java2d/pipe/RegionSpanIterator;->curhiy:I

    aput v3, p1, v5

    return v2
.end method

.method public skipDownTo(I)V
    .locals 0

    iput p1, p0, Lsun/java2d/pipe/RegionSpanIterator;->loy:I

    return-void
.end method
