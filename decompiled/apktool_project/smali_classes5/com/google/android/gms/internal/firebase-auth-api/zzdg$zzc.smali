.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    const-string v1, "SHA224"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdg$zzc;->zzf:Ljava/lang/String;

    return-object p0
.end method
