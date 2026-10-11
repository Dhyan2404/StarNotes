.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzme;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzme;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzme;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzme;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    const/16 v1, 0x446

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;->zzF(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
