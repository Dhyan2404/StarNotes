.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwi;


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    new-instance p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwj;

    invoke-direct {p4, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Landroid/content/Context;)V

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    return-void
.end method
