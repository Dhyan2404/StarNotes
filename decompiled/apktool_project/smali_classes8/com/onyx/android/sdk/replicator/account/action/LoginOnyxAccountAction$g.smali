.class public final Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$g;->e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$g;->e:Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;->access$checkTokenValid(Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction;Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LoginOnyxAccountAction$g;->a(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)Z

    move-result p0

    return p0
.end method
