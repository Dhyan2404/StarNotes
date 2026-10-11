.class public final Lcom/sunia/HTREnginev2/unp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/unp;->e:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/unp;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/unp;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/unp;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->B(J)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/unp;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xjp;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
