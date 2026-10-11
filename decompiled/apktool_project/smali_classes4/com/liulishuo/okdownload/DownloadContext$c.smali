.class public Lcom/liulishuo/okdownload/DownloadContext$c;
.super Lcom/liulishuo/okdownload/core/listener/DownloadListener2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Lcom/liulishuo/okdownload/DownloadContextListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/liulishuo/okdownload/DownloadContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadContext;Lcom/liulishuo/okdownload/DownloadContextListener;I)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadContextListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener2;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->f:Lcom/liulishuo/okdownload/DownloadContextListener;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->g:Lcom/liulishuo/okdownload/DownloadContext;

    return-void
.end method


# virtual methods
.method public taskEnd(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 7
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->f:Lcom/liulishuo/okdownload/DownloadContextListener;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->g:Lcom/liulishuo/okdownload/DownloadContext;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/liulishuo/okdownload/DownloadContextListener;->taskEnd(Lcom/liulishuo/okdownload/DownloadContext;Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;I)V

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->f:Lcom/liulishuo/okdownload/DownloadContextListener;

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadContext$c;->g:Lcom/liulishuo/okdownload/DownloadContext;

    invoke-interface {p1, p0}, Lcom/liulishuo/okdownload/DownloadContextListener;->queueEnd(Lcom/liulishuo/okdownload/DownloadContext;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "taskEnd and remainCount "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadContext"

    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
