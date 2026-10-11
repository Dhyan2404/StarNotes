.class final Lcom/google/android/gms/internal/firebase-auth-api/zzar;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient zza:I

.field private final transient zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaq;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzb:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzz;->zza(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zza:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzb:I

    return p0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zza:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzb:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzaq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzz;->zza(III)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zza:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->subList(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    return-object p0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zza:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zze()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzf()[Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzf()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
