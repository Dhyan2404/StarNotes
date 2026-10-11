.class public abstract Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;
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
    value = "SMAP\nBaseShapePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShapePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\"\u001a\u00020\u001d\u00a2\u0006\u0004\u0008)\u0010*J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\u0019\u0010\t\u001a\u00028\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0011\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0008\u0010\u0013\u001a\u00020\u0005H\u0016J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0016R\u001a\u0010\"\u001a\u00020\u001d8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0018\u0010\u000b\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;",
        "T",
        "",
        "Ljava/io/FileOutputStream;",
        "fout",
        "",
        "writeTo",
        "Ljava/io/FileInputStream;",
        "fin",
        "parseFrom",
        "(Ljava/io/FileInputStream;)Ljava/lang/Object;",
        "data",
        "setData",
        "(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;",
        "getData",
        "()Ljava/lang/Object;",
        "",
        "isSuccessful",
        "save",
        "saveExportRecord",
        "load",
        "checkArgsNotComplete",
        "",
        "dataFileDir",
        "dataFilePath",
        "dataZipFilePath",
        "pbDirPath",
        "documentId",
        "shapeFileDirPath",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "args",
        "b",
        "Ljava/lang/Object;",
        "",
        "c",
        "Ljava/lang/Throwable;",
        "throwable",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V",
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
        "SMAP\nBaseShapePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShapePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    return-void
.end method


# virtual methods
.method public checkArgsNotComplete()Z
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "empty documentId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "empty pageId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "empty revisionId"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getCreateAt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "empty createAt"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    return v2
.end method

.method public final dataFileDir()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getPbDirPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->shapeFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dataFilePath()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->getPageShapeFileName(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dataZipFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final isSuccessful()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->c:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public load()Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->checkArgsNotComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataZipFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data zip file not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "data zip file is empty and data file is exist"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getPbDirPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->shapeFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->decompress(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data file not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->parseFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-object p0

    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    throw p0
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

.method public save()Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "empty data"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->checkArgsNotComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->dataZipFilePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    :try_start_0
    new-instance v4, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v4}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->writeTo(Ljava/io/FileOutputStream;)V

    sget-object v6, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/io/File;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v1

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v2, v1}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->zipFiles-RgG5Fkc([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Result;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument$save$1$1;

    invoke-direct {v0, p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument$save$1$1;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
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
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->c:Ljava/lang/Throwable;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save data zip file fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->isSaveExportRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->saveExportRecord()V

    :cond_2
    return-object p0
.end method

.method public saveExportRecord()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "provider expected not null"

    invoke-virtual {v0, p0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setDocumentId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setPageId(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setStatus(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->a:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getCreateAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setTimeStamp(J)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->saveRecordModel(Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;)V

    return-void
.end method

.method public setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public shapeFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pbDirPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->docDirFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "shape"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/lang/String;)Z

    return-object p0
.end method

.method public abstract writeTo(Ljava/io/FileOutputStream;)V
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
