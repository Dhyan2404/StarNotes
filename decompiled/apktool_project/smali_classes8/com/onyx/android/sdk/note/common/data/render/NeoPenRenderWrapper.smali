.class public Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;
.super Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014J \u0010\u000c\u001a\u00020\u00062\u0016\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\nH\u0014R\u001a\u0010\u0012\u001a\u00020\r8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Paint;",
        "paint",
        "",
        "render",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "appendPredictPenResult",
        "Lkotlin/Pair;",
        "pair",
        "addPenResult",
        "",
        "e",
        "Z",
        "getSegment",
        "()Z",
        "segment",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "neoPen",
        "<init>",
        "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoPen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;)V

    iput-boolean p2, p0, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->e:Z

    if-nez p2, :cond_0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->setPointCountThreshold(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPenResult(Lkotlin/Pair;)V
    .locals 2
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "+",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getPenResults()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pen/PenResult;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getPenResults()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/pen/PenResult;

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pen/PenResult;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pen/PenResult;->append(Lcom/onyx/android/sdk/pen/PenResult;)Lcom/onyx/android/sdk/pen/PenResult;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pen/PenResult;

    :goto_1
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->clearPenResults()V

    move-object p1, v1

    :cond_3
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->addPenResult(Lkotlin/Pair;)V

    return-void
.end method

.method public appendPredictPenResult()Lcom/onyx/android/sdk/pen/PenResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getPenResults()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/pen/PenResult;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pen/PenResult;

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/pen/PenResult;->append(Lcom/onyx/android/sdk/pen/PenResult;)Lcom/onyx/android/sdk/pen/PenResult;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getSegment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->e:Z

    return p0
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->appendPredictPenResult()Lcom/onyx/android/sdk/pen/PenResult;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->renderResult(Lcom/onyx/android/sdk/pen/PenResult;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method
