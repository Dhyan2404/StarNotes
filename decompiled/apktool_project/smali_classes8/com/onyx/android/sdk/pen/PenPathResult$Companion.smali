.class public final Lcom/onyx/android/sdk/pen/PenPathResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/PenPathResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J:\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0002R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenPathResult$Companion;",
        "",
        "",
        "resetCount",
        "dumpCount",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "ink",
        "Lcom/onyx/android/sdk/pen/PenPathResult;",
        "buildFromInkArray",
        "Landroid/graphics/Path;",
        "path",
        "",
        "points",
        "",
        "start",
        "end",
        "Lkotlin/Triple;",
        "Landroid/graphics/RectF;",
        "a",
        "",
        "DUMP_POINTS",
        "Z",
        "EMPTY_FLOAT_ARRAY",
        "[F",
        "",
        "EMPTY_INT_ARRAY",
        "[I",
        "pathCount",
        "I",
        "pointCount",
        "<init>",
        "()V",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;[FII)Lkotlin/Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "[FII)",
            "Lkotlin/Triple<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/RectF;",
            "[F>;"
        }
    .end annotation

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p4

    const/4 v1, 0x2

    invoke-static {p4, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p4

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p4

    if-lez p4, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    if-gez p4, :cond_4

    if-gt v2, v1, :cond_4

    :cond_1
    :goto_0
    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$getDUMP_POINTS$cp()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$getPointCount$cp()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$setPointCount$cp(I)V

    :cond_2
    aget v3, p2, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p2, v4

    if-ne v1, p3, :cond_3

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v3, v4, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v2, :cond_4

    add-int/2addr v1, p4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    new-instance p2, Lkotlin/Triple;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenPathResult;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->incReserve(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPointSizeArray()[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    move-object v7, v0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$getDUMP_POINTS$cp()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$getPathCount$cp()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$setPathCount$cp(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPointSizeArray()[I

    move-result-object v8

    aget v8, v8, v4

    add-int/2addr v6, v8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v8

    invoke-virtual {p0, v1, v8, v5, v6}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;->a(Landroid/graphics/Path;[FII)Lkotlin/Triple;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_2

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v5}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :cond_2
    invoke-virtual {v5}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    return-object v0

    :cond_4
    new-instance p0, Lcom/onyx/android/sdk/pen/PenPathResult;

    invoke-direct {p0, v1, v7}, Lcom/onyx/android/sdk/pen/PenPathResult;-><init>(Landroid/graphics/Path;Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/PenPathResult;->setPoints([F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPointSizeArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/PenPathResult;->setPointSizeArray([I)V

    return-object p0
.end method

.method public final dumpCount()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$getPathCount$cp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", point count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$getPointCount$cp()I

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

    invoke-static {p0}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$setPathCount$cp(I)V

    invoke-static {p0}, Lcom/onyx/android/sdk/pen/PenPathResult;->access$setPointCount$cp(I)V

    return-void
.end method
