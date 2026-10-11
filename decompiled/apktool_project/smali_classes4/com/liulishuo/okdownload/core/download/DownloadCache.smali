.class public Lcom/liulishuo/okdownload/core/download/DownloadCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/core/download/DownloadCache$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

.field public volatile c:Z

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Z

.field public volatile i:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->b:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->b:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->b:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public b()Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i:Ljava/io/IOException;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->a:Ljava/lang/String;

    return-object p0
.end method

.method public catchException(Ljava/io/IOException;)V
    .locals 1

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isUserCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setPreconditionFailed(Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setServerCanceled(Ljava/io/IOException;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setFileBusyAfterRun()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setPreAllocateFailed(Ljava/io/IOException;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setUnknownError(Ljava/io/IOException;)V

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "catch unknown error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadCache"

    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public d()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i:Ljava/io/IOException;

    check-cast p0, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;->getResumeFailedCause()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->g:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->c:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->e:Z

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->f:Z

    return p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->a:Ljava/lang/String;

    return-void
.end method

.method public isInterrupt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->g:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->h:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPreAllocateFailed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->h:Z

    return p0
.end method

.method public isUserCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->d:Z

    return p0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->d:Z

    return-void
.end method

.method public setFileBusyAfterRun()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->g:Z

    return-void
.end method

.method public setPreAllocateFailed(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->h:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i:Ljava/io/IOException;

    return-void
.end method

.method public setPreconditionFailed(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->c:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i:Ljava/io/IOException;

    return-void
.end method

.method public setServerCanceled(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->e:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i:Ljava/io/IOException;

    return-void
.end method

.method public setUnknownError(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->f:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->i:Ljava/io/IOException;

    return-void
.end method
