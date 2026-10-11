.class public final Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "c",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        "f",
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        "policyType",
        "Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;",
        "g",
        "Lkotlin/Lazy;",
        "b",
        "()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V",
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
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/galaxy/note/account/data/PolicyType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/account/data/PolicyType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "policyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->Custom_NoTitle_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->f:Lcom/onyx/galaxy/note/account/data/PolicyType;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->d(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->b()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPolicyType$p(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)Lcom/onyx/galaxy/note/account/data/PolicyType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->f:Lcom/onyx/galaxy/note/account/data/PolicyType;

    return-object p0
.end method

.method public static final d(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->b()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/y4l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y4l;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->f:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/PolicyType;->getTitleRes()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->b()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;->tvDialogTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;->b()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$a;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog$b;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffe0

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
