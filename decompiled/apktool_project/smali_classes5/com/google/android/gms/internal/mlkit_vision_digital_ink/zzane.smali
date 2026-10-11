.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamz;
.source "SourceFile"


# static fields
.field private static final zza:Z

.field private static final zzb:Z

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane$zza;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zza:Z

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "robolectric"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zzb:Z

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamz;-><init>()V

    return-void
.end method

.method public static zzp()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static zzq()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static bridge synthetic zzr()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zzb:Z

    return v0
.end method

.method public static bridge synthetic zzs()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zza:Z

    return v0
.end method

.method public static zzt()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.system.VMStack"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackClass2"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zzq()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane$zza;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method


# virtual methods
.method public zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzami;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzami;

    move-result-object p0

    return-object p0
.end method

.method public zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamy;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzane;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamy;

    return-object p0
.end method

.method public zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzani;

    move-result-object p0

    return-object p0
.end method

.method public zzm()Ljava/lang/String;
    .locals 0

    const-string p0, "platform: Android"

    return-object p0
.end method
