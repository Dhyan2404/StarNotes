.class public abstract Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008)\u0010*J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00028\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00028\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rH&J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH&J\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0014\u001a\u00020\rH\u0016J\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0015\u001a\u00020\u000fJ\u0006\u0010\u0017\u001a\u00020\u000fJ\u001b\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0017\u0010\u001f\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\u0008\u0010#\u001a\u00020\u0006H\u0002R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010\u0015\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;",
        "T",
        "",
        "data",
        "Ljava/io/FileOutputStream;",
        "fout",
        "",
        "writeTo",
        "(Ljava/lang/Object;Ljava/io/FileOutputStream;)V",
        "Ljava/io/FileInputStream;",
        "fin",
        "parseFrom",
        "(Ljava/io/FileInputStream;)Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "args",
        "",
        "getDataFilePath",
        "uniqueId",
        "getPBFileDirPath",
        "setArgs",
        "getArgs",
        "pbDirPath",
        "setPbDirPath",
        "getPbDirPath",
        "setData",
        "(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;",
        "getData",
        "()Ljava/lang/Object;",
        "save",
        "load",
        "saveData",
        "loadData",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/Object;",
        "",
        "checkArgsNotComplete",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "b",
        "Ljava/lang/Object;",
        "c",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nBasePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public checkArgsNotComplete(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "empty documentId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "empty revisionId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return v2
.end method

.method public getArgs()Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    if-nez p0, :cond_0

    const-string p0, "args"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final getDataFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    if-nez v0, :cond_0

    const-string v0, "args"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getDataFilePath(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDataFilePath(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getPbDirPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final load()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    if-nez v0, :cond_0

    const-string v0, "args"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->loadData(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final loadData(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->checkArgsNotComplete(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getDataFilePath(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data file not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->parseFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public abstract parseFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .param p1    # Ljava/io/FileInputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final save()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    if-nez v0, :cond_0

    const-string v0, "args"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->saveData(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object p0

    return-object p0
.end method

.method public final saveData(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ")",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "empty data"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->checkArgsNotComplete(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getDataFilePath(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->b:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->writeTo(Ljava/lang/Object;Ljava/io/FileOutputStream;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save data file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
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
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->isSaveExportRecord()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->a()V

    :cond_2
    return-object p0
.end method

.method public setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ")",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    return-object p0
.end method

.method public final setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pbDirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->c:Ljava/lang/String;

    return-object p0
.end method

.method public abstract writeTo(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    .param p2    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/FileOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
