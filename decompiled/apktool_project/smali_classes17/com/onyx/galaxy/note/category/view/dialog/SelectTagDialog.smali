.class public final Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000u\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u00014\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0004\u00088\u00109J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000cH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000eH\u0007J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR*\u0010&\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u0010/\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010(\u001a\u0004\u0008\u0018\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001b\u00107\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010(\u001a\u0004\u0008\u001c\u00106\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "dismiss",
        "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;",
        "event",
        "onSaveTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;",
        "onCreateTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;",
        "onCreateMultipleSubTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;",
        "onDeleteTagEvent",
        "j",
        "k",
        "r",
        "",
        "eventId",
        "q",
        "p",
        "Landroid/content/Context;",
        "h",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "i",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "manageTagContext",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "getApplySubject",
        "()Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "setApplySubject",
        "(Lio/reactivex/rxjava3/subjects/PublishSubject;)V",
        "applySubject",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;",
        "Lkotlin/Lazy;",
        "g",
        "()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;",
        "adapter",
        "Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;",
        "l",
        "()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;",
        "binding",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "m",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "com/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1",
        "n",
        "()Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1;",
        "checkEmptyDataObserver",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V",
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
.field public final h:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/common/data/ManageTagContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manageTagContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$adapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$adapter$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->k:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->l:Lkotlin/Lazy;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->n:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->g()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getManageTagContext$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    return-object p0
.end method

.method public static final synthetic access$initData(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->j()V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->o(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->m(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->l(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->n(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->p()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->j:Lio/reactivex/rxjava3/subjects/PublishSubject;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_tag_move_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->dismiss()V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_tag_move_0003"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->q(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h:Landroid/content/Context;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    sget-object v1, Lcom/onyx/android/sdk/data/TagCreateFrom;->HOME_FUNC_TAG_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {p1, v0, p0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h:Landroid/content/Context;

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/TagCreateFrom;->HOME_FUNC_TAG_MOVE_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->g()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->i()Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;

    return-object p0
.end method

.method public final getApplySubject()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->j:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->l:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    return-object p0
.end method

.method public final i()Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1;

    return-object p0
.end method

.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->g()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->initList()V

    return-void
.end method

.method public final k()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->g()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->i()Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$checkEmptyDataObserver$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->g()Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/cgm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/cgm;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/dgm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/dgm;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;->tvManagerTag:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvManagerTag"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/egm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/egm;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectTagBinding;->tvCreateTag:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCreateTag"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/fgm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fgm;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffbf

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateMultipleSubTagEvent(Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->r()V

    return-void
.end method

.method public final onCreateTagEvent(Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->r()V

    return-void
.end method

.method public final onDeleteTagEvent(Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->r()V

    return-void
.end method

.method public final onSaveTagEvent(Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->r()V

    return-void
.end method

.method public final p()V
    .locals 2

    const/16 v0, 0x3f2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "trigger_from"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectTagId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v1, "tag_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_tag_move_0001"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/16 v0, 0x3f2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "trigger_from"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final r()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog$a;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final setApplySubject(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/subjects/PublishSubject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectTagDialog;->j:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method
