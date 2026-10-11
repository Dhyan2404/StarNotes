.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,230:1\n1855#2:231\n1856#2:238\n1#3:232\n41#4,5:233\n*S KotlinDebug\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$1\n*L\n109#1:231\n109#1:238\n116#1:233,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,230:1\n1855#2:231\n1856#2:238\n1#3:232\n41#4,5:233\n*S KotlinDebug\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$1\n*L\n109#1:231\n109#1:238\n116#1:233,5\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;->f:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)Lkotlin/Pair;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;->f:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/request/page/EnsureNotePageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/onyx/android/sdk/universal/editor/request/page/EnsureNotePageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/request/page/EnsureNotePageRequest;->getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;->access$hitTestShapes(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v6, 0x0

    if-nez v2, :cond_1

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    if-eqz v5, :cond_1

    move v6, v7

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v4, :cond_3

    move-object v2, v4

    :cond_3
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
