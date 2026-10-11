.class public final Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1",
        "Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;",
        "onDelete",
        "",
        "model",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "onLogin",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

.field public final synthetic b:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;->a:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;->b:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "model"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadRecentLoginAccountList()V

    return-void
.end method

.method public onLogin(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;->a:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$onLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;->b:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method
