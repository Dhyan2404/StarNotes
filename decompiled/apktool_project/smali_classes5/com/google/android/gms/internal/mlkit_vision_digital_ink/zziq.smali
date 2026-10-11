.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zziq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileGroupManager"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: Unable to correct isolated structure, returning null instead of group %s"

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzq(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
