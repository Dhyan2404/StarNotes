.class final Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->m0()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x353e4cb1    # -6347175.5f

    if-eq v0, v1, :cond_4

    const v1, -0x1db57bb4

    if-eq v0, v1, :cond_2

    const v1, -0x1501f7ad

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OLD_PASSWORD_VISIBILITY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->access$changeOldPasswordVisibility(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V

    goto :goto_0

    :cond_2
    const-string v0, "NEW_PASSWORD_VISIBILITY_CHANGED"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->access$changeNewPasswordVisibility(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V

    goto :goto_0

    :cond_4
    const-string v0, "RESET_PASSWORD_SUCCESS"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;->this$0:Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->access$onPasswordReset(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V

    :cond_5
    :goto_0
    return-void
.end method
