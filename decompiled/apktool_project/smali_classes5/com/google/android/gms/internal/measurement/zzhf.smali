.class public final synthetic Lcom/google/android/gms/internal/measurement/zzhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhd;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzhc;

.field private synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhf;->zza:Lcom/google/android/gms/internal/measurement/zzhc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhf;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhf;->zza:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhf;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhc;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
