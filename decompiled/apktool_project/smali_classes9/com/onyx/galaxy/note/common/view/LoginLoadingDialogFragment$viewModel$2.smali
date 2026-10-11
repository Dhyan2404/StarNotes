.class final Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment$viewModel$2;->this$0:Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment$viewModel$2;->this$0:Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;

    const-class v0, Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getViewModel(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment$viewModel$2;->invoke()Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;

    move-result-object p0

    return-object p0
.end method
