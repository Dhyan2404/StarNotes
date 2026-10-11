.class public abstract Lcom/sunia/HTREnginev2/aap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/zabf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/aap;->a:Lcom/google/android/gms/common/api/internal/zabf;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/zabi;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->b(Lcom/google/android/gms/common/api/internal/zabi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->a(Lcom/google/android/gms/common/api/internal/zabi;)Lcom/google/android/gms/common/api/internal/zabf;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/aap;->a:Lcom/google/android/gms/common/api/internal/zabf;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/aap;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->b(Lcom/google/android/gms/common/api/internal/zabi;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->b(Lcom/google/android/gms/common/api/internal/zabi;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
