.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzql;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zza;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;


# direct methods
.method private constructor <init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzql;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzpt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;-><init>(IILcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;)V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpr;)V

    return-object v0
.end method

.method private final zzf()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    return p0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    :goto_0
    add-int/lit8 p0, p0, 0x5

    return p0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    if-ne v0, v1, :cond_3

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown variant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza:I

    if-ne v0, v2, :cond_1

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzf()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzf()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AES-CMAC Parameters (variant: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte key)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzb:I

    return p0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zza:I

    return p0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpq$zzb;

    return-object p0
.end method
