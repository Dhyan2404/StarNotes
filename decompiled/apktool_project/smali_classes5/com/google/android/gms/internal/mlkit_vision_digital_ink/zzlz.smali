.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

.field public final synthetic zzc:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;Ljava/util/Comparator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;->zzc:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlz;->zzc:Ljava/util/Comparator;

    const/16 v2, 0x444

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;

    invoke-virtual {v0, v1, p0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmp;->zzz(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;Ljava/util/Comparator;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
