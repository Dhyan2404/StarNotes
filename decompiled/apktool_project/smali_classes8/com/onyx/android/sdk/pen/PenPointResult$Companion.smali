.class public final Lcom/onyx/android/sdk/pen/PenPointResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/PenPointResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenPointResult$Companion;",
        "",
        "()V",
        "DUMP_POINTS",
        "",
        "pointCount",
        "",
        "buildFromInkArray",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "ink",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "lastResult",
        "dumpCount",
        "",
        "resetCount",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/PenPointResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pen/PenPointResult;)Lcom/onyx/android/sdk/pen/PenPointResult;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pen/PenPointResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez v1, :cond_5

    if-gt v3, v2, :cond_5

    :cond_2
    move-object v4, p0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v7

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    new-instance v8, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-direct {v8, v5, v6, v7}, Lcom/onyx/android/sdk/pen/PenPointInk;-><init>(FFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPointResult;->access$getDUMP_POINTS$cp()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPointResult;->access$getPointCount$cp()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lcom/onyx/android/sdk/pen/PenPointResult;->access$setPointCount$cp(I)V

    :cond_3
    if-nez v4, :cond_4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->union(FF)V

    :goto_1
    if-eq v2, v3, :cond_6

    add-int/2addr v2, v1

    goto :goto_0

    :cond_5
    move-object v4, p0

    :cond_6
    if-nez v4, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Lcom/onyx/android/sdk/pen/PenPointResult;

    invoke-direct {p0, v0, v4, p2}, Lcom/onyx/android/sdk/pen/PenPointResult;-><init>(Ljava/util/List;Landroid/graphics/RectF;Lcom/onyx/android/sdk/pen/PenPointResult;)V

    return-object p0
.end method

.method public final dumpCount()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/pen/PenPointResult$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPointResult;->access$getPointCount$cp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final resetCount()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/onyx/android/sdk/pen/PenPointResult;->access$setPointCount$cp(I)V

    return-void
.end method
