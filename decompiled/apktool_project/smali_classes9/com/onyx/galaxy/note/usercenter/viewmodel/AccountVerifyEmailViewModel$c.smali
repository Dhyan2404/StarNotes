.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getVerificationCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;->a(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
