.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setFetchPolicy(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setAccountId(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;->a(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    move-result-object p0

    return-object p0
.end method
