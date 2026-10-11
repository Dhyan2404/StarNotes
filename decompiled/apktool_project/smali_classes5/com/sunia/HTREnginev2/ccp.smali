.class public final Lcom/sunia/HTREnginev2/ccp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabz;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/a;Lcom/google/android/gms/common/api/internal/zay;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/a;->l(Lcom/google/android/gms/common/api/internal/a;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->p(Lcom/google/android/gms/common/api/internal/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zab(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/a;->l(Lcom/google/android/gms/common/api/internal/a;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->p(Lcom/google/android/gms/common/api/internal/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zac(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->q(Lcom/google/android/gms/common/api/internal/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/a;->m(Lcom/google/android/gms/common/api/internal/a;Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/a;->n(Lcom/google/android/gms/common/api/internal/a;IZ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-static {v0, p2}, Lcom/google/android/gms/common/api/internal/a;->m(Lcom/google/android/gms/common/api/internal/a;Z)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/a;->h(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabi;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ccp;->a:Lcom/google/android/gms/common/api/internal/a;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/internal/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
