.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\"\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tH\u0002J\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tH\u0002J \u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0007H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lkotlin/Pair;",
        "",
        "p",
        "",
        "o",
        "shapes",
        "m",
        "pair",
        "q",
        "oldShape",
        "newImagePath",
        "",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    return-object p0
.end method

.method public static final synthetic access$iterateUpdateShapes(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryShapes(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveUriToFile(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateQuoteShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->q(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateQuoteShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->r(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->n(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static final n(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMapIterable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/jxn;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/jxn;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$j;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$j;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/request/LoadShapeListRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;->getQuoteShapeIds()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/request/LoadShapeListRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/request/LoadShapeListRequest;->getShapeList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setUseAddTransformedMethod(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;Lkotlin/Pair;)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createLightNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$m;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;)V

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$n;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$n;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v3, "doOnNext(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$4;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;

    invoke-direct {v4, p0, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p1, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$6;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;

    invoke-direct {v3, p0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p1, v0, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v3, p2, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->getExcerptShapeIndicatorAnchorRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    const/4 v5, 0x1

    int-to-float v5, v5

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;->getBitmapScaleRatio()F

    move-result p0

    div-float/2addr v5, p0

    invoke-static {v2, v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    invoke-static {v3, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v0, p1, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {v0, p0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;->updateShapeRect()V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setRevisionId(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    sget-object p1, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, v4}, Lcom/onyx/android/sdk/note/extension/ResourceModelKt;->loadAndSaveResource(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->toShapeResource(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setQuoteIndicatorAnchorRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method
