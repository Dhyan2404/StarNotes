.class public final Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction<",
        "Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "q",
        "newName",
        "p",
        "Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;",
        "request",
        "",
        "n",
        "",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "j",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final i:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioInfoBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->i:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$createCrossPageShapes(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->n(Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$rename(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->o(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renameListShape(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNewName$p(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showRenameDialog(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->m(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Z)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Z)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->i:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$d;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "filter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$create$5;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$create$5;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/akl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/akl;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$f;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$g;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;->getTransformShapeContext()Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addCrossPageShapes$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$h;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->i:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$i;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioNameRequest;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->i:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$renameListShape$1;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$renameListShape$1;-><init>(Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$renameListShape$2;

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$renameListShape$2;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;Lcom/onyx/android/sdk/universal/editor/request/audio/RenameAudioLinkShapeRequest;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$j;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$j;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "just(...)"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->j:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->j:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->i:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction$k;-><init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
