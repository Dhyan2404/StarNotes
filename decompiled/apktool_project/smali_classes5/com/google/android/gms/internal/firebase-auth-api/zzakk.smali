.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    return-object v0
.end method

.method private static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;
    .locals 3

    :try_start_0
    const-class v0, Lcom/google/protobuf/r;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaki;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
