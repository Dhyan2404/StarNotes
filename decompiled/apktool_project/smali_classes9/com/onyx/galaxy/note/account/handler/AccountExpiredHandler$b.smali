.class public final Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->onAccountExpired(Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;)V
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
.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;->e:Landroid/app/Activity;

    const-class v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;->e:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/account/event/FinishBeforeLogin;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/FinishBeforeLogin;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->access$setHandlingTokenExpireEvent$p(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;->a(Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;)V

    return-void
.end method
