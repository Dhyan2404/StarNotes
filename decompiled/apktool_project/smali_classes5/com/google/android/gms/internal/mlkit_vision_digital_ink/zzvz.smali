.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
