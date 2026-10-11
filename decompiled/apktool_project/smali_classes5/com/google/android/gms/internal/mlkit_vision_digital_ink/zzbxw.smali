.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

.field public static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

.field private static final zzd:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    move-result-object v0

    const-wide v1, -0xe7791f700L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    move-result-object v0

    const-wide v2, 0x3afff4417fL

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    const v2, 0x3b9ac9ff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zzd:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zze()J

    move-result-wide v0

    const-wide v2, -0xe7791f700L

    cmp-long v2, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzc()I

    move-result v3

    if-ltz v2, :cond_0

    const-wide v4, 0x3afff4417fL

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    if-ltz v3, :cond_0

    const v2, 0x3b9aca00

    if-ge v3, v2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999]."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;
    .locals 6

    const-wide/16 v0, 0x3e8

    rem-long v2, p0, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v2, v2

    div-long/2addr p0, v0

    const v0, -0x3b9aca00

    const v1, 0x3b9aca00

    if-le v2, v0, :cond_0

    if-lt v2, v1, :cond_1

    :cond_0
    div-int v0, v2, v1

    int-to-long v3, v0

    invoke-static {p0, p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaps;->zza(JJ)J

    move-result-wide p0

    rem-int/2addr v2, v1

    :cond_1
    if-gez v2, :cond_2

    add-int/2addr v2, v1

    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaps;->zzc(JJ)J

    move-result-wide p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    return-object p0
.end method
