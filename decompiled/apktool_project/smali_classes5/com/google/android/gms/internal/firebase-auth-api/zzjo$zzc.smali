.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

    const-string v1, "COMPRESSED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

    const-string v1, "UNCOMPRESSED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

    const-string v1, "LEGACY_UNCOMPRESSED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjo$zzc;->zzd:Ljava/lang/String;

    return-object p0
.end method
