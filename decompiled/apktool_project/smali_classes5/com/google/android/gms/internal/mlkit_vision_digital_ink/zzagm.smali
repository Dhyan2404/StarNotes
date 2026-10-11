.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Random;

.field private static final zzb:Ljava/security/SecureRandom;

.field private static final zzc:Ljava/util/Random;

.field private static final zzd:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zza:Ljava/util/Random;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzd()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzb:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzc:Ljava/util/Random;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzd:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static synthetic zza()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzd:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic zzb()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzd()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static zzc()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zzb:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static zzd()Ljava/security/SecureRandom;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    return-object v0
.end method
