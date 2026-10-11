.class public final synthetic Lcom/google/android/gms/measurement/internal/zzhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic e:Lcom/google/android/gms/measurement/internal/zzhl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhp;->e:Lcom/google/android/gms/measurement/internal/zzhl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhp;->e:Lcom/google/android/gms/measurement/internal/zzhl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzr;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->i:Lcom/google/android/gms/internal/measurement/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Lcom/google/android/gms/internal/measurement/zzv;)V

    return-object v0
.end method
