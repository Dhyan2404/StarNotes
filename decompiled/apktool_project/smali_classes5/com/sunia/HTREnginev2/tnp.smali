.class public final Lcom/sunia/HTREnginev2/tnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tnp;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/tnp;->f:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tnp;->g:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tnp;->g:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xjp;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tnp;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/tnp;->f:Z

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
