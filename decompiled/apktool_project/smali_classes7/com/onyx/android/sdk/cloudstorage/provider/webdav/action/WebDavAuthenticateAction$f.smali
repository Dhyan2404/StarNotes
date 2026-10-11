.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->s(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->f:Lio/reactivex/rxjava3/core/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->setAccountId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->f:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->f:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;->a(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V

    return-void
.end method
