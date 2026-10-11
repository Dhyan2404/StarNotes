.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebDavSearchFileListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavSearchFileListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1855#2,2:83\n*S KotlinDebug\n*F\n+ 1 WebDavSearchFileListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction\n*L\n51#1:83,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "getProvider",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "searchCloudFileList",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "f",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
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
        "SMAP\nWebDavSearchFileListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavSearchFileListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1855#2,2:83\n*S KotlinDebug\n*F\n+ 1 WebDavSearchFileListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction\n*L\n51#1:83,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-void
.end method

.method public static final synthetic access$searchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->searchCloudFileList()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->m(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".query!!%"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->andWith(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-object p0
.end method

.method public final searchCloudFileList()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    :try_start_0
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavSearchFileRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavSearchFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavSearchFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getFetchSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setDir(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->saveFolder(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/thegrizzlylabs/sardineandroid/impl/SardineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    throw v1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/y5o;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/y5o;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryAllFileResult(Ljava/lang/String;Ljava/lang/String;Lio/reactivex/rxjava3/functions/Consumer;)Lcom/onyx/android/sdk/data/common/data/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/QueryResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    return-object v0
.end method
