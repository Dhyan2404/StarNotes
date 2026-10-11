.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->sendVerifyCode(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;->f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;->f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getEmail()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    const-string v5, ""

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;->f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getCheckCurrentAccount()Z

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;-><init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
