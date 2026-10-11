.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;->searchFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Optional;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 22
    .param p1    # Ljava/util/Optional;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "resourceOptional"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x3fff

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "get(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    iget-object v0, v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction$a;->a(Ljava/util/Optional;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method
