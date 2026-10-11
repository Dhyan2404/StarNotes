.class final Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->p0()V
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "UNBIND_HUAWEI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$unbindHuawei(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "LOG_OUT"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$askForLogout(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "LOG_OFF"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$logOff(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "REBIND_PHONE"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$rebindPhone(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "REBIND_EMAIL"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$rebindEmail(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "MODIFY_NICKNAME"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$showNameInputDialog(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "BIND_WECHAT"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$bindWechat(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "CHANGE_AVATAR"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$selectAvatarImage(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "BIND_HUAWEI"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$bindHuawei(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto :goto_0

    :sswitch_9
    const-string v0, "RESET_PASSWORD"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$resetPassword(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto :goto_0

    :sswitch_a
    const-string v0, "CANCEL_AGREEMENT"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    .line 24
    :cond_b
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$cancelUserAgreement(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto :goto_0

    :sswitch_b
    const-string v0, "BIND_PHONE"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    .line 26
    :cond_c
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$bindPhone(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto :goto_0

    :sswitch_c
    const-string v0, "BIND_EMAIL"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 28
    :cond_d
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$bindEmail(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    goto :goto_0

    :sswitch_d
    const-string v0, "UNBIND_WECHAT"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    .line 30
    :cond_e
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$unbindWechat(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->access$getAccountViewModel(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getEvents()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6bfbe2d1 -> :sswitch_d
        -0x63bd0f06 -> :sswitch_c
        -0x63241d34 -> :sswitch_b
        -0x19f5d19b -> :sswitch_a
        -0x18b9e455 -> :sswitch_9
        -0xe5557d7 -> :sswitch_8
        0x694a4c8 -> :sswitch_7
        0xa629168 -> :sswitch_6
        0x23390e53 -> :sswitch_5
        0x34ce176d -> :sswitch_4
        0x3567093f -> :sswitch_3
        0x3f3d55b4 -> :sswitch_2
        0x3f3d5793 -> :sswitch_1
        0x7b4c33f0 -> :sswitch_0
    .end sparse-switch
.end method
