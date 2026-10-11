.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlk;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlk;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
