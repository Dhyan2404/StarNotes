.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->e(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

.field public final synthetic f:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;->f:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;->f:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->access$onAccountDestroyed(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;->a(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    return-void
.end method
