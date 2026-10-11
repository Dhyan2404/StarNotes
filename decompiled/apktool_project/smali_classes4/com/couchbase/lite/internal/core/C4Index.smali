.class public final Lcom/couchbase/lite/internal/core/C4Index;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Index;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Index;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Index;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Index;->impl:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/zy;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zy;-><init>(Lcom/couchbase/lite/internal/core/C4Index;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static create(J)Lcom/couchbase/lite/internal/core/C4Index;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Index;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Index;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Index;-><init>(Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Index;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Index;->lambda$closePeer$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4Index;ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Index;->lambda$beginUpdate$0(ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$beginUpdate$0(ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Index;->impl:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;->nBeginUpdate(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->create(J)Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$closePeer$1(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Index;->impl:Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4Index$NativeImpl;->nReleaseIndex(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginUpdate(I)Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Database.lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/az;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/az;-><init>(Lcom/couchbase/lite/internal/core/C4Index;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nullableWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    return-object p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4Index;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4Index;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
