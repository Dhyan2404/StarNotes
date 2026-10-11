.class final Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountVerifyHuaweiFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyHuaweiFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n*L\n1#1,61:1\n64#2:62\n*S KotlinDebug\n*F\n+ 1 AccountVerifyHuaweiFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2\n*L\n21#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountVerifyHuaweiFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyHuaweiFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n*L\n1#1,61:1\n64#2:62\n*S KotlinDebug\n*F\n+ 1 AccountVerifyHuaweiFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2\n*L\n21#1:62\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyHuaweiFragment$huaweiViewModel$2;->invoke()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    move-result-object p0

    return-object p0
.end method
