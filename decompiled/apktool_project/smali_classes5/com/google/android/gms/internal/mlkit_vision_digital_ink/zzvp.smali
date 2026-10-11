.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p0

    return-object p0
.end method
