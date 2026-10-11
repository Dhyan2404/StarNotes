.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

.field private zzb:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzi:Z

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzj:Ljava/net/Proxy;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzk:Lokhttp3/Handshake;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zzb:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zza(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    :cond_1
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzh:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;Ljava/net/URL;)Ljava/net/URL;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zzb:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
