.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zzd:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zzc:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznj;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznm;->zzg(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
