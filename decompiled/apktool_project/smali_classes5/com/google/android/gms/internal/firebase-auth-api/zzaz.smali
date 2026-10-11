.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaz;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaq<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzba;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzz;->zza(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzba;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzba;)[Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzba;)I

    move-result p0

    return p0
.end method

.method public final zze()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
