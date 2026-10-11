.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const-string v1, "Context cannot be null"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzt;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zza:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzj;

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyl;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzym;)V

    return-object v0
.end method
