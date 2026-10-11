.class public Lsun/java2d/pipe/RegionClipSpanIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/SpanIterator;


# instance fields
.field box:Lsun/java2d/pipe/RegionIterator;

.field doNextBox:Z

.field doNextSpan:Z

.field done:Z

.field lwm:Lsun/java2d/pipe/RegionIterator;

.field lwmhiy:I

.field lwmloy:I

.field resetState:Lsun/java2d/pipe/RegionIterator;

.field rgn:Lsun/java2d/pipe/Region;

.field rgnbndshix:I

.field rgnbndshiy:I

.field rgnbndslox:I

.field rgnbndsloy:I

.field rgnbox:[I

.field rgnhix:I

.field rgnhiy:I

.field rgnlox:I

.field rgnloy:I

.field row:Lsun/java2d/pipe/RegionIterator;

.field spanIter:Lsun/java2d/pipe/SpanIterator;

.field spanbox:[I

.field spanhix:I

.field spanhiy:I

.field spanlox:I

.field spanloy:I


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/SpanIterator;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanbox:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->done:Z

    iput-object p2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanIter:Lsun/java2d/pipe/SpanIterator;

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->getIterator()Lsun/java2d/pipe/RegionIterator;

    move-result-object p2

    iput-object p2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->resetState:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {p2}, Lsun/java2d/pipe/RegionIterator;->createCopy()Lsun/java2d/pipe/RegionIterator;

    move-result-object p2

    iput-object p2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwm:Lsun/java2d/pipe/RegionIterator;

    iget-object v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    invoke-virtual {p2, v1}, Lsun/java2d/pipe/RegionIterator;->nextYRange([I)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->done:Z

    return-void

    :cond_0
    iget-object p2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    aget v2, p2, v1

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmloy:I

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnloy:I

    const/4 v2, 0x3

    aget v3, p2, v2

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmhiy:I

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhiy:I

    invoke-virtual {p1, p2}, Lsun/java2d/pipe/Region;->getBounds([I)V

    iget-object p2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    aget v3, p2, v0

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndslox:I

    aget v4, p2, v1

    iput v4, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndsloy:I

    const/4 v5, 0x2

    aget v5, p2, v5

    iput v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndshix:I

    aget p2, p2, v2

    iput p2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndshiy:I

    if-ge v3, v5, :cond_2

    if-lt v4, p2, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgn:Lsun/java2d/pipe/Region;

    iget-object p1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwm:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {p1}, Lsun/java2d/pipe/RegionIterator;->createCopy()Lsun/java2d/pipe/RegionIterator;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->row:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {p1}, Lsun/java2d/pipe/RegionIterator;->createCopy()Lsun/java2d/pipe/RegionIterator;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->box:Lsun/java2d/pipe/RegionIterator;

    iput-boolean v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextSpan:Z

    iput-boolean v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->done:Z

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method

.method public getNativeIterator()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPathBox([I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgn:Lsun/java2d/pipe/Region;

    invoke-virtual {v1, v0}, Lsun/java2d/pipe/Region;->getBounds([I)V

    iget-object p0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanIter:Lsun/java2d/pipe/SpanIterator;

    invoke-interface {p0, p1}, Lsun/java2d/pipe/SpanIterator;->getPathBox([I)V

    const/4 p0, 0x0

    aget v1, p1, p0

    aget v2, v0, p0

    if-ge v1, v2, :cond_0

    aput v2, p1, p0

    :cond_0
    const/4 p0, 0x1

    aget v1, p1, p0

    aget v2, v0, p0

    if-ge v1, v2, :cond_1

    aput v2, p1, p0

    :cond_1
    const/4 p0, 0x2

    aget v1, p1, p0

    aget v2, v0, p0

    if-le v1, v2, :cond_2

    aput v2, p1, p0

    :cond_2
    const/4 p0, 0x3

    aget v1, p1, p0

    aget v0, v0, p0

    if-le v1, v0, :cond_3

    aput v0, p1, p0

    :cond_3
    return-void
.end method

.method public intersectClipBox(IIII)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanIter:Lsun/java2d/pipe/SpanIterator;

    invoke-interface {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/SpanIterator;->intersectClipBox(IIII)V

    return-void
.end method

.method public nextSpan([I)Z
    .locals 10

    iget-boolean v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextSpan:Z

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanIter:Lsun/java2d/pipe/SpanIterator;

    iget-object v6, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanbox:[I

    invoke-interface {v2, v6}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->done:Z

    return v1

    :cond_2
    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanbox:[I

    aget v6, v2, v1

    iput v6, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanlox:I

    iget v7, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndshix:I

    if-lt v6, v7, :cond_3

    goto :goto_1

    :cond_3
    aget v6, v2, v5

    iput v6, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanloy:I

    iget v7, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndshiy:I

    if-lt v6, v7, :cond_4

    goto :goto_1

    :cond_4
    aget v3, v2, v3

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhix:I

    iget v7, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndslox:I

    if-gt v3, v7, :cond_5

    goto :goto_1

    :cond_5
    aget v2, v2, v4

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhiy:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbndsloy:I

    if-gt v2, v3, :cond_6

    goto :goto_1

    :cond_6
    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmloy:I

    if-le v2, v6, :cond_7

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwm:Lsun/java2d/pipe/RegionIterator;

    iget-object v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->resetState:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RegionIterator;->copyStateFrom(Lsun/java2d/pipe/RegionIterator;)V

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwm:Lsun/java2d/pipe/RegionIterator;

    iget-object v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RegionIterator;->nextYRange([I)Z

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    aget v3, v2, v5

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmloy:I

    aget v2, v2, v4

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmhiy:I

    :cond_7
    :goto_2
    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmhiy:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanloy:I

    if-gt v2, v3, :cond_9

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwm:Lsun/java2d/pipe/RegionIterator;

    iget-object v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RegionIterator;->nextYRange([I)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    aget v3, v2, v5

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmloy:I

    aget v2, v2, v4

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmhiy:I

    goto :goto_2

    :cond_9
    :goto_3
    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmhiy:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanloy:I

    if-le v2, v3, :cond_1

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmloy:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhiy:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnloy:I

    if-eq v3, v2, :cond_a

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->row:Lsun/java2d/pipe/RegionIterator;

    iget-object v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwm:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RegionIterator;->copyStateFrom(Lsun/java2d/pipe/RegionIterator;)V

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmloy:I

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnloy:I

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->lwmhiy:I

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhiy:I

    :cond_a
    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->box:Lsun/java2d/pipe/RegionIterator;

    iget-object v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->row:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v2, v3}, Lsun/java2d/pipe/RegionIterator;->copyStateFrom(Lsun/java2d/pipe/RegionIterator;)V

    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    iput-boolean v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextSpan:Z

    goto/16 :goto_1

    :cond_b
    if-eqz v0, :cond_f

    iget-object v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->row:Lsun/java2d/pipe/RegionIterator;

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RegionIterator;->nextYRange([I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    aget v3, v2, v5

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnloy:I

    aget v2, v2, v4

    iput v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhiy:I

    :cond_c
    if-eqz v0, :cond_e

    iget v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnloy:I

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhiy:I

    if-lt v0, v2, :cond_d

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->box:Lsun/java2d/pipe/RegionIterator;

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->row:Lsun/java2d/pipe/RegionIterator;

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RegionIterator;->copyStateFrom(Lsun/java2d/pipe/RegionIterator;)V

    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    goto/16 :goto_0

    :cond_e
    :goto_4
    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextSpan:Z

    goto/16 :goto_0

    :cond_f
    iget-boolean v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->box:Lsun/java2d/pipe/RegionIterator;

    iget-object v4, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    invoke-virtual {v2, v4}, Lsun/java2d/pipe/RegionIterator;->nextXBand([I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v4, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnbox:[I

    aget v6, v4, v1

    iput v6, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnlox:I

    aget v3, v4, v3

    iput v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhix:I

    :cond_10
    if-eqz v2, :cond_13

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnlox:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhix:I

    if-lt v2, v3, :cond_11

    goto :goto_6

    :cond_11
    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhix:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanlox:I

    if-gt v2, v3, :cond_12

    goto :goto_5

    :cond_12
    move v5, v1

    :goto_5
    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    goto/16 :goto_1

    :cond_13
    :goto_6
    iput-boolean v1, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhiy:I

    iget v3, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhiy:I

    if-lt v2, v3, :cond_14

    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextSpan:Z

    goto/16 :goto_1

    :cond_14
    move v0, v5

    goto/16 :goto_1

    :cond_15
    iput-boolean v5, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->doNextBox:Z

    iget v2, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanlox:I

    iget v6, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnlox:I

    if-le v2, v6, :cond_16

    goto :goto_7

    :cond_16
    move v2, v6

    :goto_7
    iget v6, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanloy:I

    iget v7, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnloy:I

    if-le v6, v7, :cond_17

    goto :goto_8

    :cond_17
    move v6, v7

    :goto_8
    iget v7, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhix:I

    iget v8, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhix:I

    if-ge v7, v8, :cond_18

    goto :goto_9

    :cond_18
    move v7, v8

    :goto_9
    iget v8, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanhiy:I

    iget v9, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->rgnhiy:I

    if-ge v8, v9, :cond_19

    goto :goto_a

    :cond_19
    move v8, v9

    :goto_a
    if-ge v2, v7, :cond_1

    if-lt v6, v8, :cond_1a

    goto/16 :goto_1

    :cond_1a
    aput v2, p1, v1

    aput v6, p1, v5

    aput v7, p1, v3

    aput v8, p1, v4

    return v5
.end method

.method public skipDownTo(I)V
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/RegionClipSpanIterator;->spanIter:Lsun/java2d/pipe/SpanIterator;

    invoke-interface {p0, p1}, Lsun/java2d/pipe/SpanIterator;->skipDownTo(I)V

    return-void
.end method
