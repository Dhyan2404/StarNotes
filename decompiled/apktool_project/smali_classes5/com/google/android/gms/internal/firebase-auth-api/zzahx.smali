.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaim;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;->zzb:[B

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaim;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzaim;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaim;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/firebase-auth-api/zzahw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaho;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaim;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;->zzb:[B

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaim;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaim;

    return-object p0
.end method
