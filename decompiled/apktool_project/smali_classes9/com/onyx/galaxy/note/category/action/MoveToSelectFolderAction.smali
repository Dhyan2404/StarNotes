.class public final Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoveToSelectFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveToSelectFolderAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1855#2,2:111\n1747#2,3:113\n766#2:116\n857#2,2:117\n766#2:119\n857#2,2:120\n766#2:122\n857#2,2:123\n*S KotlinDebug\n*F\n+ 1 MoveToSelectFolderAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectFolderAction\n*L\n44#1:111,2\n52#1:113,3\n70#1:116\n70#1:117,2\n78#1:119\n78#1:120,2\n79#1:122\n79#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u001a\u0010\t\u001a\u00020\u00082\u0010\u0010\u0007\u001a\u000c\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0008H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0002H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "rootNode",
        "",
        "r",
        "q",
        "",
        "x",
        "s",
        "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;",
        "g",
        "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;",
        "manageFolderContext",
        "",
        "h",
        "Ljava/lang/String;",
        "from",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;",
        "i",
        "Ljava/lang/ref/WeakReference;",
        "dialog",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "<init>",
        "(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V",
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
        "SMAP\nMoveToSelectFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveToSelectFolderAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1855#2,2:111\n1747#2,3:113\n766#2:116\n857#2,2:117\n766#2:119\n857#2,2:120\n766#2:122\n857#2,2:123\n*S KotlinDebug\n*F\n+ 1 MoveToSelectFolderAction.kt\ncom/onyx/galaxy/note/category/action/MoveToSelectFolderAction\n*L\n44#1:111,2\n52#1:113,3\n70#1:116\n70#1:117,2\n78#1:119\n78#1:120,2\n79#1:122\n79#1:123,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/data/ManageFolderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manageFolderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkHasFolder(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->q()V

    return-void
.end method

.method public static final synthetic access$getDialog$p(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$initRootNode(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->r(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final synthetic access$moveNoteList(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->j:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$showDialog(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->x()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->y(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic m(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->u(Z)V

    return-void
.end method

.method public static synthetic n(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->v(Z)V

    return-void
.end method

.method public static synthetic o(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->w(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->t(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;Z)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;Z)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->option_move_success:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->i:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final u(Z)V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->move_folder_note_conflicted:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final v(Z)V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->move_note_conflicted:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final w(Z)V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->move_folder_conflicted:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final y(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
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
            "Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$d;->e:Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->j:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v1, :cond_0

    const-string v1, "provider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getOpNoteIds()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setHasFolder(Z)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
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
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setRootNode(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getSelectedFolderNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getMoveNoteList()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getMoveNoteList()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    invoke-direct {v4, v2, v0}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;

    invoke-direct {v2, v1, v3, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$k;-><init>(IILcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v2, "observeOn(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/HTREnginev2/epj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/epj;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$moveNoteList$4;

    invoke-direct {v2, v1, v3}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$moveNoteList$4;-><init>(II)V

    new-instance v4, Lcom/sunia/HTREnginev2/fpj;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/fpj;-><init>()V

    invoke-static {v0, v2, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$moveNoteList$6;

    invoke-direct {v2, v1, v3}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$moveNoteList$6;-><init>(II)V

    new-instance v4, Lcom/sunia/HTREnginev2/gpj;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/gpj;-><init>()V

    invoke-static {v0, v2, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$moveNoteList$8;

    invoke-direct {v2, v1, v3}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$moveNoteList$8;-><init>(II)V

    new-instance v1, Lcom/sunia/HTREnginev2/hpj;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hpj;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$i;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_8
    :goto_4
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction$j;-><init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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
    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->g:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->h:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v2, "create(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectFolderDialog;->setPublishSubject(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    new-instance p0, Lcom/sunia/HTREnginev2/dpj;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/dpj;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
