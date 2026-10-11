.class public final Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->v0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;->a(Z)V

    return-void
.end method
