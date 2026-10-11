.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2b

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zza:I

    const/4 p0, 0x0

    return p0
.end method

.method public final zza()I
    .locals 0

    const/16 p0, 0x2b

    return p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
