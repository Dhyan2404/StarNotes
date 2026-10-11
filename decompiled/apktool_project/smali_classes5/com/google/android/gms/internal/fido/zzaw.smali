.class final Lcom/google/android/gms/internal/fido/zzaw;
.super Lcom/google/android/gms/internal/fido/zzar;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fido/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzaz;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/fido/zzar;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzaw;->zza:Lcom/google/android/gms/internal/fido/zzaz;

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzaw;->zza:Lcom/google/android/gms/internal/fido/zzaz;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
