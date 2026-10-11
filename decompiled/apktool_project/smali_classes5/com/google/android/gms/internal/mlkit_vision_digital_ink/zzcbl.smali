.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbl;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;
.source "SourceFile"


# instance fields
.field private final zza:Lokio/Pipe;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;-><init>()V

    new-instance v0, Lokio/Pipe;

    const-wide/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lokio/Pipe;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbl;->zza:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbk;->zzb(Lokio/BufferedSink;J)V

    return-void
.end method


# virtual methods
.method public final writeTo(Lokio/BufferedSink;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcbl;->zza:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->source()Lokio/Source;

    move-result-object v1

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
