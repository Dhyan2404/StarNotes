.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbi;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    return-object p0
.end method
