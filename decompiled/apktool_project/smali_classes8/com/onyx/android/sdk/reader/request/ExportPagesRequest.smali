.class public final Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0017\u0010\u000f\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "",
        "path",
        "",
        "totalPage",
        "f",
        "Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;",
        "Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;",
        "args",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "g",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getSelection",
        "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "setSelection",
        "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V",
        "selection",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getDocument()Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->createDocumentExporter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getTotalPage()I

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;->getReaderExportArgs()Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;->exportPages(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Z

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exportPagesResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->destroyReaderByPath(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f(Ljava/lang/String;I)V

    return-void
.end method

.method public final f(Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;->getReaderExportArgs()Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;->getReaderExportArgs()Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getPages()[I

    move-result-object p0

    array-length p0, p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v8, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", totalPage = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fileSize = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\noutputPath = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exportPageCount = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", outputFileSize = "

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    invoke-virtual {v7, v8, p0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long p0, v2, v5

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "export file size("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is large than origin file size("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v7, v8, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->f:Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    return-object p0
.end method

.method public final getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-object p0
.end method

.method public final setSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method
