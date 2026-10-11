.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private zzd:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null groupName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfy;
    .locals 0

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzd:B

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;
    .locals 8

    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzd:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zza:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaj;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " groupName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzai;->zzd:B

    if-nez p0, :cond_3

    const-string p0, " pendingOnly"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
