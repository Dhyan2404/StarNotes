.class public final Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;
.super Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u00020\u00082\u0016\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nH\u0014J\n\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;",
        "neoPen",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "segment",
        "",
        "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V",
        "addPenResult",
        "",
        "pair",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "appendPredictPenResult",
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "neoPen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;Z)V

    return-void
.end method


# virtual methods
.method public addPenResult(Lkotlin/Pair;)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->getSegment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->clearPenResults()V

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->addPenResult(Lkotlin/Pair;)V

    return-void
.end method

.method public appendPredictPenResult()Lcom/onyx/android/sdk/pen/PenResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getPenResults()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pen/PenResult;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
