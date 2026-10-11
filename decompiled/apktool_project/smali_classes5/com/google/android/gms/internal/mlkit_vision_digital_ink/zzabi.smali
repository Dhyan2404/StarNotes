.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private zzc:Ljava/lang/String;

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzd:Z

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabf;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzd:Z

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabg;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;->zzd:Z

    const-string v1, "Must specify either forKeys(...) or forAllKeys() before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzf(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabm;)V

    return-object v0
.end method
