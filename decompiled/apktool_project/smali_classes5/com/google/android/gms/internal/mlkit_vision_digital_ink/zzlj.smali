.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "FileGroupManager"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s: Unable to create symlink structure, cleaning up symlinks..."

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-result-object p1

    invoke-static {v1, v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: Unable to clean up symlink structure after failure"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method
