.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    const-string v1, "HKDF_SHA256"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    const-string v1, "HKDF_SHA384"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    const-string v1, "HKDF_SHA512"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzjw;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzb;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
