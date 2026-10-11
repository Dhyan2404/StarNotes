.class public final synthetic Lcom/google/android/gms/measurement/internal/zzhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic e:Lcom/google/android/gms/measurement/internal/zzhl;

.field public synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzhl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhn;->e:Lcom/google/android/gms/measurement/internal/zzhl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhn;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhn;->e:Lcom/google/android/gms/measurement/internal/zzhl;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhn;->f:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzm;

    new-instance v2, Lcom/sunia/HTREnginev2/klp;

    invoke-direct {v2, v0, p0}, Lcom/sunia/HTREnginev2/klp;-><init>(Lcom/google/android/gms/measurement/internal/zzhl;Ljava/lang/String;)V

    const-string p0, "internal.remoteConfig"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzo;)V

    return-object v1
.end method
