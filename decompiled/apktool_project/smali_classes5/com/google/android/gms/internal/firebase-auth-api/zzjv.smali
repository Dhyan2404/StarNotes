.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjv;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzkp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzc;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzb;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkp;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzjy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjx;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;

    filled-new-array {v3, v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final zza()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zza;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zze;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzd;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjv$zzf;

    return-object p0
.end method
