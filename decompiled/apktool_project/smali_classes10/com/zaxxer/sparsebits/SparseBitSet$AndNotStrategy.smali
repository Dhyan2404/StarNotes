.class public Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;
.super Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/sparsebits/SparseBitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndNotStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public block(III[J[J)Z
    .locals 4

    const/4 p0, 0x1

    move p1, p0

    :goto_0
    if-eq p2, p3, :cond_1

    aget-wide v0, p4, p2

    aget-wide v2, p5, p2

    not-long v2, v2

    and-long/2addr v0, v2

    aput-wide v0, p4, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    and-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public properties()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public start(Lcom/zaxxer/sparsebits/SparseBitSet;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public word(II[J[JJ)Z
    .locals 2

    aget-wide p0, p3, p2

    aget-wide v0, p4, p2

    and-long p4, v0, p5

    not-long p4, p4

    and-long/2addr p0, p4

    aput-wide p0, p3, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
