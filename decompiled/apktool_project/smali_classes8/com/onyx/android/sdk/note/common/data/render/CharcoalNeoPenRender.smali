.class public final Lcom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender;
.super Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharcoalNeoPenRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharcoalNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 CharcoalNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender\n*L\n26#1:32\n26#1:33,2\n27#1:35,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender;",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "neoPen",
        "Lcom/onyx/android/sdk/pen/NeoCharcoalPen;",
        "(Lcom/onyx/android/sdk/pen/NeoCharcoalPen;)V",
        "render",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "points",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCharcoalNeoPenRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharcoalNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 CharcoalNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender\n*L\n26#1:32\n26#1:33,2\n27#1:35,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoCharcoalPen;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoCharcoalPen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoPen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;)V

    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p3, v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getNeoPen()Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/pen/NeoPen;->onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pen/PenResult;

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->renderResult(Lcom/onyx/android/sdk/pen/PenResult;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-static {p3, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getNeoPen()Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/onyx/android/sdk/pen/NeoPen;->onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pen/PenResult;

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->renderResult(Lcom/onyx/android/sdk/pen/PenResult;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getNeoPen()Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object p3

    invoke-virtual {p3, v1, v3}, Lcom/onyx/android/sdk/pen/NeoPen;->onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/pen/PenResult;

    invoke-virtual {p0, p3, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->renderResult(Lcom/onyx/android/sdk/pen/PenResult;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->reset()V

    return-void
.end method
