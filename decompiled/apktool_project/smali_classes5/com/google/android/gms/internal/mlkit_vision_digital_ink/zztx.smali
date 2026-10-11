.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;

.field public final synthetic zzb:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;->zzb:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;->zzb:Landroid/net/Uri;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb(Landroid/net/Uri;Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
