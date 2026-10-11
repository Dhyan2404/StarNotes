.class public final Lcom/sunia/HTREnginev2/enp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/enp;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/enp;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method
