.class public final Lcom/sunia/HTREnginev2/s9p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

.field public final synthetic c:Lcom/google/android/gms/common/api/internal/zabe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabe;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s9p;->c:Lcom/google/android/gms/common/api/internal/zabe;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s9p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/s9p;->b:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sunia/HTREnginev2/s9p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s9p;->b:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s9p;->c:Lcom/google/android/gms/common/api/internal/zabe;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->e(Lcom/google/android/gms/common/api/internal/zabe;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
