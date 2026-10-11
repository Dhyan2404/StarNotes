.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzve;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzve;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;->zzf()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzva;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzva;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakl;->zza(Ljava/util/Iterator;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzd()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzd()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zze()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zze()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzg(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    :goto_0
    return-object p0
.end method
