.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

.field public final synthetic zzb:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;Ljava/util/Comparator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznl;->zzb:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznl;->zzb:Ljava/util/Comparator;

    const/16 v1, 0x44f

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    const/16 v2, 0x452

    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;->zzw(Ljava/util/Comparator;IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
