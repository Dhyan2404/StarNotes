.class public Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/liulishuo/okdownload/core/file/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/liulishuo/okdownload/core/file/FileLock;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/file/FileLock;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->a:Lcom/liulishuo/okdownload/core/file/FileLock;

    return-void
.end method


# virtual methods
.method public completeProcessStream(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public createProcessStream(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V

    return-object p0
.end method

.method public discardProcess(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Delete file failed!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public getFileLock()Lcom/liulishuo/okdownload/core/file/FileLock;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->a:Lcom/liulishuo/okdownload/core/file/FileLock;

    return-object p0
.end method

.method public isPreAllocateLength(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory()Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    move-result-object p0

    invoke-interface {p0}, Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;->supportSeek()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getSetPreAllocateLength()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getSetPreAllocateLength()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
