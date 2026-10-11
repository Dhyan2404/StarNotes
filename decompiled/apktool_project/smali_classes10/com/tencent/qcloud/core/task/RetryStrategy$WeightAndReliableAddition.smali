.class public Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/task/RetryStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightAndReliableAddition"
.end annotation


# instance fields
.field private final addTable:[[I

.field private final maxReliable:I

.field private final maxWeight:I

.field private final minReliable:I

.field private final minWeight:I


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->maxWeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->minWeight:I

    iput v1, p0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->minReliable:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->maxReliable:I

    const/4 v3, 0x3

    new-array v4, v3, [[I

    const/4 v5, 0x1

    filled-new-array {v1, v5, v0, v0, v0}, [I

    move-result-object v6

    aput-object v6, v4, v1

    filled-new-array {v1, v5, v0, v3, v3}, [I

    move-result-object v6

    aput-object v6, v4, v5

    filled-new-array {v1, v5, v0, v3, v2}, [I

    move-result-object v1

    aput-object v1, v4, v0

    iput-object v4, p0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->addTable:[[I

    return-void
.end method

.method private regular(III)I
    .locals 0

    if-le p1, p2, :cond_0

    return p2

    :cond_0
    if-ge p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method


# virtual methods
.method public getRetryAddition(II)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->regular(III)I

    move-result p1

    const/4 v0, 0x4

    invoke-direct {p0, p2, v0, v1}, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->regular(III)I

    move-result p2

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->addTable:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
