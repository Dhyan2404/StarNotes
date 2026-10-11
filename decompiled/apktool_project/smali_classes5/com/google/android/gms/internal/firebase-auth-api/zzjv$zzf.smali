.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;->zzd:Ljava/lang/String;

    return-object p0
.end method
