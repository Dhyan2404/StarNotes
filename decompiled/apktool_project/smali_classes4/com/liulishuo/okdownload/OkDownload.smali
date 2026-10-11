.class public Lcom/liulishuo/okdownload/OkDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/OkDownload$Builder;
    }
.end annotation


# static fields
.field public static volatile j:Lcom/liulishuo/okdownload/OkDownload;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

.field public final b:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field public final c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

.field public final d:Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

.field public final e:Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

.field public final f:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

.field public final g:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

.field public final h:Landroid/content/Context;

.field public i:Lcom/liulishuo/okdownload/DownloadMonitor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;Lcom/liulishuo/okdownload/core/download/DownloadStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/OkDownload;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/liulishuo/okdownload/OkDownload;->a:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iput-object p3, p0, Lcom/liulishuo/okdownload/OkDownload;->b:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iput-object p4, p0, Lcom/liulishuo/okdownload/OkDownload;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    iput-object p5, p0, Lcom/liulishuo/okdownload/OkDownload;->d:Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    iput-object p6, p0, Lcom/liulishuo/okdownload/OkDownload;->e:Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    iput-object p7, p0, Lcom/liulishuo/okdownload/OkDownload;->f:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iput-object p8, p0, Lcom/liulishuo/okdownload/OkDownload;->g:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-static {p4}, Lcom/liulishuo/okdownload/core/Util;->createRemitDatabase(Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->setDownloadStore(Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V

    return-void
.end method

.method public static setSingletonInstance(Lcom/liulishuo/okdownload/OkDownload;)V
    .locals 2
    .param p0    # Lcom/liulishuo/okdownload/OkDownload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v0, :cond_1

    const-class v0, Lcom/liulishuo/okdownload/OkDownload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v1, :cond_0

    sput-object p0, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OkDownload must be null."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "OkDownload must be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with()Lcom/liulishuo/okdownload/OkDownload;
    .locals 3

    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v0, :cond_2

    const-class v0, Lcom/liulishuo/okdownload/OkDownload;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    if-nez v1, :cond_1

    sget-object v1, Lcom/liulishuo/okdownload/OkDownloadProvider;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/liulishuo/okdownload/OkDownload$Builder;

    invoke-direct {v2, v1}, Lcom/liulishuo/okdownload/OkDownload$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/OkDownload$Builder;->build()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    sput-object v1, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/liulishuo/okdownload/OkDownload;->j:Lcom/liulishuo/okdownload/OkDownload;

    return-object v0
.end method


# virtual methods
.method public breakpointStore()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    return-object p0
.end method

.method public callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->b:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-object p0
.end method

.method public connectionFactory()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->d:Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    return-object p0
.end method

.method public context()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->h:Landroid/content/Context;

    return-object p0
.end method

.method public downloadDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->a:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    return-object p0
.end method

.method public downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->g:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    return-object p0
.end method

.method public getMonitor()Lcom/liulishuo/okdownload/DownloadMonitor;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->i:Lcom/liulishuo/okdownload/DownloadMonitor;

    return-object p0
.end method

.method public outputStreamFactory()Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->e:Lcom/liulishuo/okdownload/core/file/DownloadOutputStream$Factory;

    return-object p0
.end method

.method public processFileStrategy()Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->f:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    return-object p0
.end method

.method public setMonitor(Lcom/liulishuo/okdownload/DownloadMonitor;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadMonitor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/liulishuo/okdownload/OkDownload;->i:Lcom/liulishuo/okdownload/DownloadMonitor;

    return-void
.end method
