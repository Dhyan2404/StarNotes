.class final Lcom/google/android/gms/internal/firebase-auth-api/zzkt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    .line 1
    const/16 p0, 0x20

    return p0
.end method

.method public final zza([B[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    array-length p0, p1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhq;->zza()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhq;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzhq;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzhq;->zza([B[B[B)[B

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzho;-><init>([B)V

    .line 7
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zza([B[B[B)[B

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected key length: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final zzc()[B
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;->zzk:[B

    return-object p0
.end method
