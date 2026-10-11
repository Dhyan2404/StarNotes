.class public final Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportStashShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportStashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010#\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u0012\u0006\u0010\u001f\u001a\u00020\u0018\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0017\u0010\u0017\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000f0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "n",
        "argsList",
        "l",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/StashShapeBean;",
        "p",
        "list",
        "",
        "q",
        "",
        "documentId",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "getOpenDocArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "setOpenDocArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V",
        "openDocArgs",
        "",
        "g",
        "Ljava/util/Set;",
        "parsedShapeSet",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V",
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
        "SMAP\nImportStashShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportStashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openDocArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->g:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$batchParseAndSaveStashShape(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->l(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deferDeleteStashShape(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadDocPageShapeArgsList(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->n()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseAndSaveStashShape(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseStashShapeList(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveStashShape(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->q(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stashScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stashScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$e;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    return-object p0
.end method

.method public final l(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getCOMMON_BATCH_DATA_COUNT()I

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "concatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x7

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/StashPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/StashPaths;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/path/StashPaths;->stashShapePBFileDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;

    new-instance v5, Lcom/sunia/HTREnginev2/bym;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/bym;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;)V

    invoke-virtual {v3, v2, v5}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->docShapeArgsListByPath(Ljava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " loadDocPageShapeArgsList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/common/path/StashPaths;->ensureStashShapeLockFile(Ljava/lang/String;)Ljava/nio/file/Path;

    :cond_0
    return-object v2
.end method

.method public final o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stashScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/StashShapeBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->g:Ljava/util/Set;

    invoke-virtual {v2, v1, p1, v3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;->parseStashShapeList(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " parseStashShapeList:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    return-object p1
.end method

.method public final q(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/StashShapeBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v3

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;->saveStashShape$default(Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scene = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getActiveScene()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", saveStashShape total count:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setOpenDocArgs(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->f:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    return-void
.end method
