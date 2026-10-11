.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbf;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbf;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    return-void
.end method


# virtual methods
.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    return-object p0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zza:Lokhttp3/OkHttpClient;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sslSocketFactory == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zza()Lokhttp3/Handshake;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzf:Lokhttp3/Call;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbh;->zzk:Lokhttp3/Handshake;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Connection has not yet been established"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
