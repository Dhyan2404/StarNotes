.class final Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/LoginFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2$1;

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2$1;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;->invoke()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    move-result-object p0

    return-object p0
.end method
