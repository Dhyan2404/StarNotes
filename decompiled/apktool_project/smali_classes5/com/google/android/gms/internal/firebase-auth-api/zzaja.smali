.class final enum Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaja;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzaja;


# instance fields
.field private final zzf:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    filled-new-array {v0, v1, v3, v4}, [Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    return-object v0
.end method
