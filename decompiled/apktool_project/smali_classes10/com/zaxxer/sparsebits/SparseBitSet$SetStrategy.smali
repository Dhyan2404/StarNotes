.class public Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;
.super Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/sparsebits/SparseBitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public block(III[J[J)Z
    .locals 0

    :goto_0
    if-eq p2, p3, :cond_0

    const-wide/16 p0, -0x1

    aput-wide p0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public properties()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public start(Lcom/zaxxer/sparsebits/SparseBitSet;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public word(II[J[JJ)Z
    .locals 0

    aget-wide p0, p3, p2

    or-long/2addr p0, p5

    aput-wide p0, p3, p2

    const/4 p0, 0x0

    return p0
.end method
