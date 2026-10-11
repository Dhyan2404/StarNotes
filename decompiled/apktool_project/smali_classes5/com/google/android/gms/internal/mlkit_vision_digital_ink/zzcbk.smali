.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field zzc:Lokio/Timeout;

.field zzd:J

.field zze:Ljava/io/OutputStream;

.field zzf:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzd:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public zza(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public final zzb(Lokio/BufferedSink;J)V
    .locals 1

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzc:Lokio/Timeout;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzd:J

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;JLokio/BufferedSink;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zze:Ljava/io/OutputStream;

    return-void
.end method
