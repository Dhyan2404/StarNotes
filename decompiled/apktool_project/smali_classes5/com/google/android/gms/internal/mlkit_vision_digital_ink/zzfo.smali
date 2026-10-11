.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Ljava/util/List;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;->zza:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;->zza:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfx;->zzi(Ljava/util/List;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
