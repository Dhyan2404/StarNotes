.class public Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;
.super Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/sparsebits/SparseBitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntersectsStrategy"
.end annotation


# instance fields
.field protected result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public block(III[J[J)Z
    .locals 8

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    if-eq p2, p3, :cond_2

    aget-wide v1, p4, p2

    iget-boolean v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    aget-wide v4, p5, p2

    and-long/2addr v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, p1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    move v5, p1

    :cond_1
    and-int/2addr v0, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public properties()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public start(Lcom/zaxxer/sparsebits/SparseBitSet;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    return p1
.end method

.method public word(II[J[JJ)Z
    .locals 2

    aget-wide v0, p3, p2

    iget-boolean p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    aget-wide p2, p4, p2

    and-long/2addr p2, v0

    and-long/2addr p2, p5

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    const/4 p3, 0x1

    const/4 p6, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p6

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    cmp-long p0, v0, p4

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move p3, p6

    :goto_1
    return p3
.end method
