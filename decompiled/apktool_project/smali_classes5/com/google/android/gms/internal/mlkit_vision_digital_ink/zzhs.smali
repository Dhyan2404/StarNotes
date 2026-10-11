.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;->zzc:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;->zzb:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;->zzc:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzm(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    return-object p0
.end method
