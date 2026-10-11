.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzc()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zza()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
