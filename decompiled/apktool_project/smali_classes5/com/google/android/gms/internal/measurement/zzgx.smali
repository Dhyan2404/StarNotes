.class public final synthetic Lcom/google/android/gms/internal/measurement/zzgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhd;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzgu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzgu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgx;->zza:Lcom/google/android/gms/internal/measurement/zzgu;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgx;->zza:Lcom/google/android/gms/internal/measurement/zzgu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgu;->zzb()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
