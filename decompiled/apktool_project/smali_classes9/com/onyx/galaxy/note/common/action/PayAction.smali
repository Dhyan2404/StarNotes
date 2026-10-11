.class public final Lcom/onyx/galaxy/note/common/action/PayAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/common/action/PayAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/action/PayAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "count",
        "",
        "l",
        "Landroidx/fragment/app/FragmentManager;",
        "g",
        "Landroidx/fragment/app/FragmentManager;",
        "getFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "h",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "getOrderArgs",
        "()Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "orderArgs",
        "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "i",
        "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "getListener",
        "()Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "listener",
        "<init>",
        "(Landroidx/fragment/app/FragmentManager;Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V",
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
.field public final g:Landroidx/fragment/app/FragmentManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/pay/data/OrderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->g:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->h:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    iput-object p3, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->i:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;

    return-void
.end method

.method public static final synthetic access$showPayDialog(Lcom/onyx/galaxy/note/common/action/PayAction;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/action/PayAction;->l(J)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/common/action/PayAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/common/action/PayAction$a;->e:Lcom/onyx/galaxy/note/common/action/PayAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/PayAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/PayAction$b;-><init>(Lcom/onyx/galaxy/note/common/action/PayAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/PayAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/PayAction$c;-><init>(Lcom/onyx/galaxy/note/common/action/PayAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->g:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public final getListener()Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->i:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;

    return-object p0
.end method

.method public final getOrderArgs()Lcom/onyx/android/sdk/pay/data/OrderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->h:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    return-object p0
.end method

.method public final l(J)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->h:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->setNoteAmount(J)V

    new-instance p1, Lcom/onyx/android/sdk/pay/view/PayDialog;

    iget-object p2, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->h:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/pay/view/PayDialog;-><init>(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->i:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/pay/view/PayDialog;->setListener(Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/PayAction;->g:Landroidx/fragment/app/FragmentManager;

    const-class p2, Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
