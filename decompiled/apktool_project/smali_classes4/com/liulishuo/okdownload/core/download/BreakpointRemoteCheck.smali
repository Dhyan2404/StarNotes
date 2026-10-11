.class public Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

.field public d:J

.field public final e:Lcom/liulishuo/okdownload/DownloadTask;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V
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

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/okdownload/core/download/ConnectTrial;
    .locals 2

    new-instance v0, Lcom/liulishuo/okdownload/core/download/ConnectTrial;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    return-object v0
.end method

.method public b(IJZ)Z
    .locals 0

    const/16 p0, 0x1a0

    if-ne p1, p0, :cond_0

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_0

    if-eqz p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public check()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->a()Lcom/liulishuo/okdownload/core/download/ConnectTrial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->executeTrial()V

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->isAcceptRange()Z

    move-result v2

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->isChunked()Z

    move-result v3

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->getInstanceLength()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->getResponseEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->getResponseFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/ConnectTrial;->getResponseCode()I

    move-result v1

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v9, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0, v7, v8, v9}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->validFilenameFromResponse(Ljava/lang/String;Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    iget-object v7, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v7, v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->setChunked(Z)V

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3, v6}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->setEtag(Ljava/lang/String;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    move-result-object v3

    iget-object v7, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v3, v7}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->isFileConflictAfterRun(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    iget-object v11, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0, v1, v3, v11, v6}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->getPreconditionFailedCause(IZLcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v3

    if-nez v3, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->b:Z

    iput-object v3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->c:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    iput-wide v4, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->d:J

    iput-boolean v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->a:Z

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->b(IJZ)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-virtual {v0, v1, v7}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isServerCanceled(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->f:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;-><init>(IJ)V

    throw v0

    :cond_4
    :goto_3
    return-void

    :cond_5
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;

    throw p0
.end method

.method public getCause()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->c:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0
.end method

.method public getCauseOrThrow()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->c:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cause find with resumable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->b:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstanceLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->d:J

    return-wide v0
.end method

.method public isAcceptRange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->a:Z

    return p0
.end method

.method public isResumable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->b:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] resumable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] failedCause["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->c:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] instanceLength["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
