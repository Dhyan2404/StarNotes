.class final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1;->invoke(Ljava/lang/Integer;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0000\u001a\u00070\u0001\u00a2\u0006\u0002\u0008\u00022\u0018\u0010\u0003\u001a\u0014 \u0005*\t\u0018\u00010\u0004\u00a2\u0006\u0002\u0008\u00020\u0004\u00a2\u0006\u0002\u0008\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/String;)Ljava/lang/Boolean;"
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1$1;->this$0:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1$1;->this$0:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1$1;->this$0:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getVerifyCodeWaitTime()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1$1;->this$0:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getPhone()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1$1$1;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
