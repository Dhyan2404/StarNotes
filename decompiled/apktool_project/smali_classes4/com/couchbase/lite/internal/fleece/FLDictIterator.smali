.class public final Lcom/couchbase/lite/internal/fleece/FLDictIterator;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# instance fields
.field private final dict:Lcom/couchbase/lite/internal/fleece/FLDict;

.field private final impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;Lcom/couchbase/lite/internal/fleece/FLDict;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/o7g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/o7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;)V

    invoke-virtual {p2, v0}, Lcom/couchbase/lite/internal/fleece/FLDict;->withContent(Lcom/couchbase/lite/internal/utils/Fn$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->dict:Lcom/couchbase/lite/internal/fleece/FLDict;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/p7g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/p7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLDictIterator;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/fleece/FLDictIterator;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->lambda$closePeer$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/fleece/FLDictIterator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->lambda$getValue$0(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$closePeer$1(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getValue$0(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;->nGetValue(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->closePeer(Lcom/couchbase/lite/LogDomain;)V

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

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()J
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/m7g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/m7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/k7g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/k7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/l7g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLDictIterator;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    return-object p0
.end method

.method public next()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/n7g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/n7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    return-void
.end method
