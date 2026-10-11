.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateCrossPageShapesByMarginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateCrossPageShapesByMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,111:1\n1603#2,9:112\n1855#2:121\n1856#2:123\n1612#2:124\n1855#2,2:125\n1#3:122\n215#4,2:127\n*S KotlinDebug\n*F\n+ 1 UpdateCrossPageShapesByMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction\n*L\n68#1:112,9\n68#1:121\n68#1:123\n68#1:124\n72#1:125,2\n68#1:122\n81#1:127,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0014\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0008\u001a\u00020\u0005H\u0002J\u0016\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00022\u0006\u0010\u0008\u001a\u00020\u0005H\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "pages",
        "n",
        "virtualPage",
        "m",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;",
        "p",
        "getVirtualPageList",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "marginArgs",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Ljava/util/List;",
        "boxList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V",
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
        "SMAP\nUpdateCrossPageShapesByMarginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateCrossPageShapesByMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,111:1\n1603#2,9:112\n1855#2:121\n1856#2:123\n1612#2:124\n1855#2,2:125\n1#3:122\n215#4,2:127\n*S KotlinDebug\n*F\n+ 1 UpdateCrossPageShapesByMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction\n*L\n68#1:112,9\n68#1:121\n68#1:123\n68#1:124\n72#1:125,2\n68#1:122\n81#1:127,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->m(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$copyBoxList(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->o()V

    return-void
.end method

.method public static final synthetic access$getVirtualPageList(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->getVirtualPageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateReferenceShapeMatrix(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->q(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/graphics/Matrix;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/graphics/Matrix;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getVirtualPageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyAll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->p(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "concatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->copyBoxList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->i:Ljava/util/List;

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$j;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterReferenceShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    instance-of v2, v1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->i:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$updateReferenceShapeMatrix$boxMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$updateReferenceShapeMatrix$boxMap$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getPageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$updateReferenceShapeMatrix$1$matrix$1;

    invoke-direct {v7, v4, v5}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$updateReferenceShapeMatrix$1$matrix$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    new-instance v4, Lcom/sunia/HTREnginev2/cxn;

    invoke-direct {v4, v7}, Lcom/sunia/HTREnginev2/cxn;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "computeIfAbsent(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->updateReferenceMatrix(Landroid/graphics/Matrix;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toPageShapeMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v5

    if-eqz v5, :cond_8

    sget-object v4, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;IILjava/lang/Object;)V

    goto :goto_3

    :cond_9
    return-void
.end method
