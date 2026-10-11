.class public final Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoveToSelectTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveToSelectTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1855#2,2:82\n*S KotlinDebug\n*F\n+ 1 MoveToSelectTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectTagAction\n*L\n34#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u001a\u0010\t\u001a\u00020\u00082\u0010\u0010\u0007\u001a\u000c\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0002H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "rootNode",
        "",
        "m",
        "",
        "o",
        "n",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "g",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "manageTagContext",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;",
        "h",
        "Ljava/lang/ref/WeakReference;",
        "getDialog",
        "()Ljava/lang/ref/WeakReference;",
        "setDialog",
        "(Ljava/lang/ref/WeakReference;)V",
        "dialog",
        "<init>",
        "(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V",
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
        "SMAP\nMoveToSelectTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveToSelectTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1855#2,2:82\n*S KotlinDebug\n*F\n+ 1 MoveToSelectTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectTagAction\n*L\n34#1:82,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/data/ManageTagContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manageTagContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    return-void
.end method

.method public static final synthetic access$initRootNode(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->m(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final synthetic access$moveTagList(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showDialog(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->p(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final p(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$subject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDialog()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasChild()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->setExpand(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setRootNode(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectedTagNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getMoveTagList()Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveTagAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getMoveTagList()Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/category/action/MoveTagAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->g:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v2, "create(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->setApplySubject(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ipj;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/ipj;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public final setDialog(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method
