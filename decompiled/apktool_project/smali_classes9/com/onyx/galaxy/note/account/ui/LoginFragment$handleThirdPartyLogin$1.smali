.class final Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/LoginFragment;->X0(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "context",
        "Landroid/content/Context;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $data:Landroid/content/Intent;

.field final synthetic $requestCode:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->$data:Landroid/content/Intent;

    iput p3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->$requestCode:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(ILcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->invoke$lambda$0(ILcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method private static final invoke$lambda$0(ILcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$microsoftAuthLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$googleAuthLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$huaweiAuthLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->$data:Landroid/content/Intent;

    invoke-interface {v0, p1, v1}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createAuthResultAction(Landroid/content/Context;Landroid/content/Intent;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v2

    if-eqz v2, :cond_0

    iget p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->$requestCode:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/a;

    invoke-direct {v3, p1, p0}, Lcom/onyx/galaxy/note/account/ui/a;-><init>(ILcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method
