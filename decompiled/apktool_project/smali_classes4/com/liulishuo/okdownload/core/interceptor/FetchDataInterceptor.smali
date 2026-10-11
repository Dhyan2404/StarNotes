.class public Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:[B

.field public final c:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

.field public final d:I

.field public final e:Lcom/liulishuo/okdownload/DownloadTask;

.field public final f:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->d:I

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->a:Ljava/io/InputStream;

    invoke-virtual {p4}, Lcom/liulishuo/okdownload/DownloadTask;->getReadBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->b:[B

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->c:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    iput-object p4, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->f:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-void
.end method


# virtual methods
.method public interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getCache()Lcom/liulishuo/okdownload/core/download/DownloadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy()Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getTask()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-long p0, v0

    return-wide p0

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->c:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    iget v2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->d:I

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->b:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->write(I[BI)V

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->increaseCallbackBytes(J)V

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->f:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->e:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2, p0}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->isFetchProcessMoment(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    :cond_1
    return-wide v0

    :cond_2
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    throw p0
.end method
