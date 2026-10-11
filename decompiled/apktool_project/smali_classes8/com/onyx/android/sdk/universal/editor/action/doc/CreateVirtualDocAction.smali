.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateVirtualDocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateVirtualDocAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1864#2,3:123\n*S KotlinDebug\n*F\n+ 1 CreateVirtualDocAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction\n*L\n99#1:123,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u001c\u0008\u0002\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013\u00a2\u0006\u0004\u0008)\u0010*J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u001c\u0010\n\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002J\u001c\u0010\u000b\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002J\u001c\u0010\u000c\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002J$\u0010\u000e\u001a\u00020\u00022\u001a\u0010\r\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R(\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "s",
        "Lkotlin/Pair;",
        "",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "n",
        "o",
        "p",
        "pair",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "Lkotlin/Function2;",
        "",
        "",
        "i",
        "Lkotlin/jvm/functions/Function2;",
        "progressCallback",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "j",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isAbort",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setAbort",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "k",
        "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
        "getRequest",
        "()Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
        "setRequest",
        "(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)V",
        "request",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lkotlin/jvm/functions/Function2;)V",
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
        "SMAP\nCreateVirtualDocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateVirtualDocAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1864#2,3:123\n*S KotlinDebug\n*F\n+ 1 CreateVirtualDocAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction\n*L\n99#1:123,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->i:Lkotlin/jvm/functions/Function2;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$collectReaderPathInfoList(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->n()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createVirtualDoc(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;Lkotlin/Pair;)Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->r(Lkotlin/Pair;)Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->t(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->q(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->k:Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->setAbort()V

    :cond_0
    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getFillColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setPageFillColor(I)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/xge;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xge;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRequest()Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->k:Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    return-object p0
.end method

.method public final isAbort()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final n()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getScene()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->p()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->o()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->p()Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final o()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getContentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getTotalPage()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->getReaderPageInfoAndText(Lcom/onyx/android/sdk/reader/Reader;I)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->i:Lkotlin/jvm/functions/Function2;

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->loadToc(Lcom/onyx/android/sdk/reader/Reader;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentPageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v3, v7, v8}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getTemplateFilePath(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v7, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v4, v5, v8, v5}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getContentPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v2, v8, v5}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->getReaderPageInfo(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v3, v6

    goto :goto_0

    :cond_4
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lkotlin/Pair;)Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->getReaderPathInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->setToc(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->k:Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-object v0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$getTemplateColor$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$getTemplateColor$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$getTemplateColor$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$getTemplateColor$2;

    new-instance v2, Lcom/sunia/HTREnginev2/yge;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/yge;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setAbort(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setRequest(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;->k:Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;

    return-void
.end method
