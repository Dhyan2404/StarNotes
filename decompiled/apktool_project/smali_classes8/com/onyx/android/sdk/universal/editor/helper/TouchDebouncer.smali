.class public final Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchDebouncer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchDebouncer.kt\ncom/onyx/android/sdk/universal/editor/helper/TouchDebouncer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n766#2:57\n857#2,2:58\n*S KotlinDebug\n*F\n+ 1 TouchDebouncer.kt\ncom/onyx/android/sdk/universal/editor/helper/TouchDebouncer\n*L\n37#1:57\n37#1:58,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005R\u0016\u0010\u000c\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;",
        "",
        "",
        "start",
        "stop",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "add",
        "",
        "detect",
        "a",
        "Z",
        "detecting",
        "",
        "b",
        "Ljava/util/List;",
        "points",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTouchDebouncer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchDebouncer.kt\ncom/onyx/android/sdk/universal/editor/helper/TouchDebouncer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n766#2:57\n857#2,2:58\n*S KotlinDebug\n*F\n+ 1 TouchDebouncer.kt\ncom/onyx/android/sdk/universal/editor/helper/TouchDebouncer\n*L\n37#1:57\n37#1:58,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final detect(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$integer;->hand_hold_duration:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$integer;->hand_hold_min_point_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_3

    return v6

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->farthestPointPair(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v7

    sub-long/2addr v2, v7

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v4, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v4

    sget-object v7, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v7, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->msToSecFloat(J)F

    move-result v7

    div-float v7, v4, v7

    sget v8, Lcom/onyx/android/sdk/universal/R$dimen;->hand_hold_max_distance:I

    invoke-virtual {v0, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v8

    sget v9, Lcom/onyx/android/sdk/universal/R$integer;->hand_shake_max_duration:I

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v9

    sget v11, Lcom/onyx/android/sdk/universal/R$dimen;->hand_shake_max_distance:I

    invoke-virtual {v0, v11}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v11

    sget v12, Lcom/onyx/android/sdk/universal/R$dimen;->hand_shake_min_speed:I

    invoke-virtual {v0, v12}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v8, v8

    cmpg-float v1, v1, v8

    if-gez v1, :cond_4

    cmp-long v1, v2, v9

    if-gez v1, :cond_4

    int-to-float v1, v11

    cmpg-float v1, v4, v1

    if-gez v1, :cond_4

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    return v5

    :cond_4
    return v6
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->a:Z

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->a:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
