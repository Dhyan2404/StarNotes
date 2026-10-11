.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

.field public final synthetic zzc:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;Ljava/util/Comparator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;->zzc:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznd;->zzc:Ljava/util/Comparator;

    const/16 v3, 0x452

    const/16 v4, 0x44f

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;->zzv(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;Ljava/util/Comparator;IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
