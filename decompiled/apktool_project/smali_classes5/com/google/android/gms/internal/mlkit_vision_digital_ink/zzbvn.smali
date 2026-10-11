.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

.field private final zzb:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    const-string v0, ""

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    const-string v0, ""

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result p2

    add-int/2addr p2, p0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result p0

    add-int/2addr p0, p2

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    return-object p0
.end method
