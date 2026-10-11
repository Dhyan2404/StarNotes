.class public Lcom/liulishuo/okdownload/core/interceptor/connect/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptConnect(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object p0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getTask()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkAvailable()V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getConnectionOrCreate()Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    move-result-object p0

    invoke-interface {p0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->execute()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;

    move-result-object p0

    return-object p0
.end method
