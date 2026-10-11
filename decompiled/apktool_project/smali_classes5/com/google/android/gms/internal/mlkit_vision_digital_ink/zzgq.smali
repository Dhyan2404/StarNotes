.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoq;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaon;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaon;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;->zzd(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgp;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgq;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb()I
.end method
