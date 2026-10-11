.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

.field public final synthetic zzb:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmz;->zzb:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzmz;->zzb:Ljava/lang/Boolean;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;->zzh(Ljava/lang/Boolean;Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
