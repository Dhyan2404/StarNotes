.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;I[B)V

    return-object v0
.end method

.method private static final zzf(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzc()I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zze()J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzt()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 6

    const/16 p0, 0x3f1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;->zzf(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zza()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zze()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;->zze()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;->zzc()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;->zzd()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapk;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;->zza()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;

    sub-long v2, v4, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;->zzc(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapk;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    const/16 p0, 0x3f0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;->zzf(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    const/16 p0, 0x3ef

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;->zzf(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    const/16 p0, 0x430

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuu;->zzf(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    return-void
.end method
