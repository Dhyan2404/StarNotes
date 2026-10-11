.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field zza:Lokhttp3/OkHttpClient;

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

.field final zzc:Lokhttp3/Headers$Builder;

.field zzd:Lokhttp3/Headers;

.field zze:Z

.field zzf:Lokhttp3/Call;

.field zzg:J

.field zzh:Lokhttp3/Response;

.field zzi:Z

.field zzj:Ljava/net/Proxy;

.field zzk:Lokhttp3/Handshake;

.field private final zzl:Ljava/lang/Object;

.field private zzm:Lokhttp3/Response;

.field private zzn:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzg:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzi:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    iput-object p1, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    return-object p1
.end method

.method private final zzd()Lokhttp3/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzf:Lokhttp3/Call;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "POST"

    iput-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    iget-object p0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " does not support writing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    const-string v4, "http.agent"

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v4, "ObsoleteUrlFactory"

    :goto_1
    invoke-virtual {v1, v2, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_5
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzg:J

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_8

    iget v1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-lez v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzg:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    move-wide v4, v6

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbl;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbl;-><init>(J)V

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbe;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbe;-><init>(J)V

    :goto_4
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzc:Lokio/Timeout;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v2

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_5

    :cond_c
    move-object v0, v3

    :goto_5
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbn;->zza:Lokhttp3/Interceptor;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lokhttp3/Dispatcher;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v2, v4}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    :cond_d
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzf:Lokhttp3/Call;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method private final zze(Z)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzm:Lokhttp3/Response;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzn:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzh:Lokhttp3/Response;

    if-eqz p0, :cond_1

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zza(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzd()Lokhttp3/Call;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zze:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzm:Lokhttp3/Response;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzn:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze:Z

    :try_start_3
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzn:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzm:Lokhttp3/Response;

    if-eqz p0, :cond_6

    monitor-exit p1

    return-object p0

    :cond_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :try_start_5
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zza(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "field == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add request property after connection is made"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzd()Lokhttp3/Call;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze:Z

    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzi:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzm:Lokhttp3/Response;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzn:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzn:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zza(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzf:Lokhttp3/Call;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzf:Lokhttp3/Call;

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public final getConnectTimeout()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result p0

    return p0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzi(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc()Lokhttp3/Headers;

    move-result-object p0

    if-ltz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzd(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc()Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc()Lokhttp3/Headers;

    move-result-object p0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc()Lokhttp3/Headers;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzd(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzh(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->doInput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object p0, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "This protocol does not support input"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result p0

    return p0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzd()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbl;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->connect()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza()V

    :cond_0
    iget-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzf:Z

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zze:Ljava/io/OutputStream;

    return-object p0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "cannot write request body after response has been read"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    iget-object p0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "method does not support a request body: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :cond_1
    new-instance p0, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect, resolve"

    invoke-direct {p0, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getReadTimeout()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result p0

    return p0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzh(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access request header fields after connection is set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    return p0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbn;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzn:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzm:Lokhttp3/Response;

    invoke-virtual {p2}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzk:Lokhttp3/Handshake;

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object p2

    iput-object p2, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzl:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setConnectTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzg:J

    const-wide/32 v0, 0x7fffffff

    .line 5
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "contentLength < 0"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already in chunked mode"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already connected"

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIfModifiedSince(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    iget-wide p1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const-string p2, "If-Modified-Since"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzc:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DateFormat;

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    invoke-virtual {p0, p2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzc:Lokhttp3/Headers$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "field == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set request property after connection is made"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final usingProxy()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzj:Ljava/net/Proxy;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc()Lokhttp3/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzd:Lokhttp3/Headers;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zze(Z)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ObsoleteUrlFactory-Selected-Protocol"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbo;->zzc(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ObsoleteUrlFactory-Response-Source"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzd:Lokhttp3/Headers;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzd:Lokhttp3/Headers;

    return-object p0
.end method
