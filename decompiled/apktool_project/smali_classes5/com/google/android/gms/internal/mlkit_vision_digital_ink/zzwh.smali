.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/concurrent/Executor;

.field private zzb:Landroid/content/Context;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method public final zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzc(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zza:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwi;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zza:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)V

    return-object v6
.end method
