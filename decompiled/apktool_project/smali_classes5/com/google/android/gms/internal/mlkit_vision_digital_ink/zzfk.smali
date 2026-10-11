.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasj;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object p0
.end method
