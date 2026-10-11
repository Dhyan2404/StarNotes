.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

.field public final synthetic zzb:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;->zzb:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzl(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
