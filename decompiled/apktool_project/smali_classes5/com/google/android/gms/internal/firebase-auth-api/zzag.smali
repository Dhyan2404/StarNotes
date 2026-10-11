.class final Lcom/google/android/gms/internal/firebase-auth-api/zzag;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaf;
.source "SourceFile"


# instance fields
.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzad;Lcom/google/android/gms/internal/firebase-auth-api/zzac;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/zzp;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzac;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzp;->zza()I

    move-result p0

    return p0
.end method

.method public final zzb(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzp;->zza(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzp;->zzb()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
