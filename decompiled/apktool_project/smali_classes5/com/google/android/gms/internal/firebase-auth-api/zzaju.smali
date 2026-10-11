.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzaju;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaju;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajw;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajy;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaju;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaju;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/Object;J)V
.end method
