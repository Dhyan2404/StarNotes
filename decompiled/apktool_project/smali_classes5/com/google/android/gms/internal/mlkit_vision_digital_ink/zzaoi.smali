.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaok;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaok;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zza:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zzc([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    throw p1
.end method


# virtual methods
.method public final zza(C)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zza:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;

    return-object p0
.end method

.method public zzc([BII)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
