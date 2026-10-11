.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Ljava/util/Optional;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->access$getFileBean$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->createFolderPath(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/thegrizzlylabs/sardineandroid/DavResource;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$a;->a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
