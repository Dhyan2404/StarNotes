.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/io/OutputStream;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakf;->zza(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;->zza:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;->zza:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;->zzb()V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string v0, "Cannot sync underlying stream"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method
