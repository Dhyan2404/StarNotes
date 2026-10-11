.class public final Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B:\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00040\u0013\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0014J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\tH\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R2\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00040\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u000e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "closeResources",
        "",
        "outputFile",
        "",
        "totalPage",
        "g",
        "getTotalPage",
        "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
        "f",
        "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
        "args",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lkotlin/ParameterName;",
        "name",
        "info",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "callback",
        "Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;",
        "h",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;",
        "pdfExport",
        "",
        "i",
        "Z",
        "getDecryptDone",
        "()Z",
        "setDecryptDone",
        "(Z)V",
        "decryptDone",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/functions/Function1;)V",
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
.field public final f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/ReaderBundle;",
            "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->g:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest$pdfExport$2;->INSTANCE:Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest$pdfExport$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->h:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public closeResources()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->closeResources()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->close()V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->i:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getOutputFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->getTotalPage()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getOutputFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public final f()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    return-object p0
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v9, Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    const/4 v10, 0x0

    new-array v3, v10, [I

    invoke-direct {v9, v3}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;-><init>([I)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;

    const-string v12, "ONYX"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v1, v4}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->create(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;)V

    move v11, v10

    :goto_0
    if-ge v11, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v3

    iget-object v4, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v11}, [I

    move-result-object v6

    iget-object v4, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPassword()Ljava/lang/String;

    move-result-object v8

    move-object v4, v9

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->importPages(Lcom/onyx/android/sdk/neopdf/PdfImportContext;Ljava/lang/String;[IILjava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->getObjNumberMapData()[I

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v3}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->setObjNumberMapData([I)V

    iget-object v3, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->g:Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v4, v11, v2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(II)V

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v3, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    :try_start_0
    iget-object v4, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v5

    iget-object v6, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPath()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [I

    :goto_3
    if-ge v10, v2, :cond_4

    aput v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->updateExportPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->i:Z

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f()Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->save(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw v0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    return-object p0
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->g:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getDecryptDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->i:Z

    return p0
.end method

.method public final getTotalPage()I
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getDocument()Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getTotalPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->destroyReaderByPath(Ljava/lang/String;)V

    return v0
.end method

.method public final setDecryptDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->i:Z

    return-void
.end method
