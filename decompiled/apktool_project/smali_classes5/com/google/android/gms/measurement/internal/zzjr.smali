.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic e:Lcom/google/android/gms/measurement/internal/zzjq;

.field public synthetic f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjr;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjr;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjr;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
