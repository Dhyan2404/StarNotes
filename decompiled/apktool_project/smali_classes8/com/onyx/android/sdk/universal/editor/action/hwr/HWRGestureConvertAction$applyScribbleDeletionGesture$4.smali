.class final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->n()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "+",
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;>;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1#2:231\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u001a\u0010\u0003\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00060\u0004H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "pair",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1#2:231\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
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
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->access$getConvertContext$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->SUCCESS:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setRecognizeState(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V

    .line 3
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 5
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->access$deleteShapes(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$4;->invoke(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
