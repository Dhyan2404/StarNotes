.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->sendVerifyCode(Landroid/app/Activity;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getPrefixedAreaCode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getPhone()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
