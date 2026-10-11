.class public Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;
.super Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/sparsebits/SparseBitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateStrategy"
.end annotation


# instance fields
.field protected transient cardinality:I

.field protected transient count:I

.field public final synthetic e:Lcom/zaxxer/sparsebits/SparseBitSet;

.field protected transient hash:J

.field protected transient wMax:I

.field protected transient wMin:I

.field protected transient wordMax:J

.field protected transient wordMin:J


# direct methods
.method public constructor <init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {p0}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->count:I

    iget-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->hash:J

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, p2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->hash:J

    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMin:I

    if-gez v0, :cond_0

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMin:I

    iput-wide p2, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wordMin:J

    :cond_0
    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMax:I

    iput-wide p2, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wordMax:J

    iget p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->cardinality:I

    invoke-static {p2, p3}, Ljava/lang/Long;->bitCount(J)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->cardinality:I

    return-void
.end method

.method public block(III[J[J)Z
    .locals 5

    const/4 p2, 0x1

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-eq v0, p3, :cond_1

    aget-wide v1, p4, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    add-int p2, p1, v0

    invoke-virtual {p0, p2, v1, v2}, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->a(IJ)V

    move p2, p5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public finish(II)V
    .locals 4

    iget-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    iget-object v0, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iput p1, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->a2Count:I

    iput p2, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->a3Count:I

    iget p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->count:I

    iput p1, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->count:I

    iget p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->cardinality:I

    iput p1, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->cardinality:I

    iget p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMax:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x40

    iget-wide v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wordMax:J

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->length:I

    iget-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    iget-object p1, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p2, p1, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->length:I

    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMin:I

    mul-int/lit8 v0, v0, 0x40

    sub-int/2addr p2, v0

    iget-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wordMin:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->size:I

    iget-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->e:Lcom/zaxxer/sparsebits/SparseBitSet;

    iget-object p1, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->hash:J

    const/16 p0, 0x20

    shr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    iput p0, p1, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    return-void
.end method

.method public properties()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public start(Lcom/zaxxer/sparsebits/SparseBitSet;)Z
    .locals 2

    const-wide/16 v0, 0x4d2

    iput-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->hash:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMin:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wordMin:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wMax:I

    iput-wide v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->wordMax:J

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->count:I

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->cardinality:I

    return p1
.end method

.method public word(II[J[JJ)Z
    .locals 3

    aget-wide p3, p3, p2

    and-long/2addr p5, p3

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p5, p6}, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;->a(IJ)V

    :cond_0
    cmp-long p0, p3, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
