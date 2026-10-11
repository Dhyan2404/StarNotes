.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u0007\u001a\u00020\u0000J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;",
        "protoList",
        "setData",
        "getData",
        "save",
        "load",
        "",
        "c",
        "",
        "a",
        "",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;",
        "data",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-class v3, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "empty documentId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "empty revisionId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;->getCreateAt()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-gtz p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "empty createAt"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    return v2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocumentUtils;->resourcePbFilePath(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final getData()Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method

.method public final load()Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data file not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;->parseFrom(Ljava/io/InputStream;)Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final save()Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    const/4 v1, 0x0

    const-class v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "empty data"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save data file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;->isSaveExportRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->c()V

    :cond_2
    return-object p0
.end method

.method public final setData(Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;)Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;->b:Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;

    return-object p0
.end method
