.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lokio/BufferedSink;

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

.field private zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;JLokio/BufferedSink;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzb:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzf:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zza:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzd:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zza:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzd:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzb:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/Sink;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzb:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzf:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zza:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzd:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zza:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzd:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes but received "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzd:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzd:J

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbj;->zzb:Lokio/BufferedSink;

    .line 6
    invoke-interface {p0, p1, p2, p3}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
