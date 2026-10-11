.class final Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "status",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Integer;)V"
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;->invoke(Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 8

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3
    sget-object v1, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->access$getVerifyCodeViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeTag()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->access$getVerifyCodeViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getResendWaitTime()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->addTimer$default(Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;Ljava/lang/String;JZILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_1
    return-void
.end method
