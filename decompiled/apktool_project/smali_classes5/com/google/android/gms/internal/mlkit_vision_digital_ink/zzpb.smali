.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;->zza:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    return-object p0
.end method
