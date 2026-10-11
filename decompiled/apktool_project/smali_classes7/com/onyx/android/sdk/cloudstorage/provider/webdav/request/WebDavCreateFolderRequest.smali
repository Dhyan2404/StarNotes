.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;",
        "webDavClient",
        "",
        "b",
        "Ljava/lang/String;",
        "path",
        "",
        "c",
        "Z",
        "getCheckExist",
        "()Z",
        "setCheckExist",
        "(Z)V",
        "checkExist",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Ljava/lang/String;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Lcom/thegrizzlylabs/sardineandroid/DavResource;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->getWebDavURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->combineUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "separator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    iget-boolean v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->exist(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->createDirectory(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    invoke-virtual {p0, v1, v5}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    const-string v0, "list(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "first(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->execute()Lcom/thegrizzlylabs/sardineandroid/DavResource;

    move-result-object p0

    return-object p0
.end method

.method public final getCheckExist()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->c:Z

    return p0
.end method

.method public final setCheckExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCreateFolderRequest;->c:Z

    return-void
.end method
