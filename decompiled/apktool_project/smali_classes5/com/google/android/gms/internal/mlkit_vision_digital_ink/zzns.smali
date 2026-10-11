.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzns;->zzc:Z

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzou;->zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;ZLjava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
