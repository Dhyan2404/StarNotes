.class public Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Ljava/util/List<",
        "Lcom/dropbox/core/v2/files/Metadata;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDropBoxFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 DropBoxFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest\n*L\n30#1:50,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0014R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "Lcom/dropbox/core/v2/files/Metadata;",
        "execute",
        "",
        "list",
        "",
        "onBatchList",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "a",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "dbxClient",
        "",
        "b",
        "Ljava/lang/String;",
        "path",
        "c",
        "Z",
        "getRecursive",
        "()Z",
        "setRecursive",
        "(Z)V",
        "recursive",
        "<init>",
        "(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDropBoxFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 DropBoxFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest\n*L\n30#1:50,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxClientV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dbxClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->c:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxClientV2Base;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderBuilder;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/core/v2/files/ListFolderBuilder;->withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderBuilder;->start()Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v2

    const-string v3, "getEntries(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dropbox/core/v2/files/Metadata;

    .line 8
    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/Metadata;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v4, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 10
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->onBatchList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getHasMore()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxClientV2Base;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListFolderResult;->getCursor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final getRecursive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->c:Z

    return p0
.end method

.method public onBatchList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setRecursive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->c:Z

    return-void
.end method
