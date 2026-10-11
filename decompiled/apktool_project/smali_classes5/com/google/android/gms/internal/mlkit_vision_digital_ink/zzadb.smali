.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadg;)V

    return-void
.end method
