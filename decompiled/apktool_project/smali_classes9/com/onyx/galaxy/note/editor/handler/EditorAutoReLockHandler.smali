.class public final Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorAutoReLockHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorAutoReLockHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,171:1\n256#2,2:172\n*S KotlinDebug\n*F\n+ 1 EditorAutoReLockHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler\n*L\n123#1:172,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001%\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u0010!\u001a\u00020\u001f\u0012\u0006\u0010$\u001a\u00020\"\u00a2\u0006\u0004\u0008.\u0010/J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0008\u0010\u001d\u001a\u00020\u0002H\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002R\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010#R\u0014\u0010\'\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010&R\u0014\u0010+\u001a\u00020(8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "destroy",
        "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;",
        "event",
        "onScreenOnEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;",
        "onDocumentStateEvent",
        "Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;",
        "onReLockNoteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;",
        "onContentViewSizeChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;",
        "onCheckEditorAutoReLockEvent",
        "Lcom/onyx/galaxy/note/editor/event/NotePasswordChangedEvent;",
        "onChangedNotePasswordEvent",
        "",
        "isShow",
        "h",
        "",
        "password",
        "l",
        "k",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "i",
        "f",
        "g",
        "c",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;",
        "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;",
        "editorViewAutoReLocLayout",
        "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;",
        "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;",
        "splitScreenLayout",
        "com/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1",
        "Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;",
        "editorViewAutoReLocLayoutListener",
        "Landroid/content/Context;",
        "e",
        "()Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V",
        "note_overseasRelease"
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
        "SMAP\nEditorAutoReLockHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorAutoReLockHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,171:1\n256#2,2:172\n*S KotlinDebug\n*F\n+ 1 EditorAutoReLockHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler\n*L\n123#1:172,2\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorViewAutoReLocLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitScreenLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->g:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->h:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$editorViewAutoReLocLayoutListener$1;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->d(Z)V

    return-void
.end method

.method public static final synthetic access$getContext(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->e()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postCheckEditorAutoReLockEvent(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->g()V

    return-void
.end method

.method public static final synthetic access$showEditorViewLockLayout(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->h(Z)V

    return-void
.end method

.method public static final synthetic access$updateEditorBundleDigest(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->j()V

    return-void
.end method

.method public static final synthetic access$verifyFingerImpl(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->k()V

    return-void
.end method

.method public static final synthetic access$verifyNotePasswordImpl(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->l(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->m(Z)V

    return-void
.end method

.method public static final d(Z)V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/SlideBarType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final m(Z)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->note_pwd_error:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEditorAutoReLockObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/dmf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dmf;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;->e:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$i;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$j;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final j()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getNoteLockPasswordOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;->execute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getEncryption()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;->setDigest(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createAuthDialogObservable$default(Lcom/onyx/galaxy/note/utils/NoteLockUtils;Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->i()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$k;->e:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$k;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$l;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/emf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/emf;-><init>()V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->i()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onChangedNotePasswordEvent(Lcom/onyx/galaxy/note/editor/event/NotePasswordChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/NotePasswordChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$c;->e:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$c;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$d;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onCheckEditorAutoReLockEvent(Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->c()V

    return-void
.end method

.method public final onContentViewSizeChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->g:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getSplitScreenType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;->showIconView(Z)V

    return-void
.end method

.method public final onDocumentStateEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;->getDocumentState()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/DocumentState;->OPENED:Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->c()V

    return-void
.end method

.method public final onReLockNoteEvent(Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->f()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$e;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$e;-><init>(Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$f;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$g;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$g;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onScreenOnEvent(Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->c()V

    return-void
.end method
