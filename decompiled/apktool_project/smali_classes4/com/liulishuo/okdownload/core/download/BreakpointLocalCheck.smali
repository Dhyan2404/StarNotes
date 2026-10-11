.class public Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Lcom/liulishuo/okdownload/DownloadTask;

.field public final f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

.field public final g:J


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iput-wide p3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->g:J

    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->isFileExistToResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->b:Z

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->isInfoRightToResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->c:Z

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->isOutputStreamSupportResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->d:Z

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->b:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->a:Z

    return-void
.end method

.method public getCauseOrThrow()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->c:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->b:Z

    if-nez v0, :cond_1

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->d:Z

    if-nez v0, :cond_2

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cause find with dirty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->a:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->a:Z

    return p0
.end method

.method public isFileExistToResume()Z
    .locals 6

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/Util;->isUriContentScheme(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/Util;->getSizeFromContentUri(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public isInfoRightToResume()Z
    .locals 8

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v4}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->g:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    return v1

    :cond_5
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3, v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public isOutputStreamSupportResume()Z
    .locals 3

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory()Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;->supportSeek()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy()Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    move-result-object v0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0, p0}, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->isPreAllocateLength(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileExist["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] infoRight["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] outputStreamSupport["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
