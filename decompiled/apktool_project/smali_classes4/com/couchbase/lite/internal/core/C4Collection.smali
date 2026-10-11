.class public final Lcom/couchbase/lite/internal/core/C4Collection;
.super Lcom/couchbase/lite/internal/core/C4Peer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final db:Lcom/couchbase/lite/internal/core/C4Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final scope:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Collection;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;JLcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/pw;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/pw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/couchbase/lite/internal/core/C4Peer;-><init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4Collection;->db:Lcom/couchbase/lite/internal/core/C4Database;

    iput-object p5, p0, Lcom/couchbase/lite/internal/core/C4Collection;->scope:Ljava/lang/String;

    iput-object p6, p0, Lcom/couchbase/lite/internal/core/C4Collection;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZLjava/lang/Long;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createVectorIndex$11(Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createPredictiveIndex$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$purgeDocument$4(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 8
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    new-instance v7, Lcom/couchbase/lite/internal/core/C4Collection;

    new-instance v0, Lcom/sunia/HTREnginev2/ex;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/ex;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Collection;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;JLcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Collection;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->create(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createArrayIndex$8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createCollectionObserver$5(Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$getIndex$13(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createValueIndex$7(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static get(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 8
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/sw;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/sw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/couchbase/lite/internal/core/C4Collection;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/couchbase/lite/internal/core/C4Collection;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;JLcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static get(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Collection;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->get(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 8
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    new-instance v7, Lcom/couchbase/lite/internal/core/C4Collection;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/rw;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v5, "_default"

    const-string v6, "_default"

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Collection;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;JLcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static getDefault(Lcom/couchbase/lite/internal/core/C4Database;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Collection;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getDefault(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$create$0(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$get$1(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createDocumentObserver$6(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$deleteIndex$14(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic k0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$setDocumentExpiration$2(Ljava/lang/String;JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic l0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$getDocumentExpiration$3(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$0(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nCreateCollection(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createArrayIndex$8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nCreateArrayIndex(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createCollectionObserver$5(Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/core/C4CollectionObserver;->newObserver(JLjava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createDocumentObserver$6(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;->newObserver(JLjava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionDocObserver;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createFullTextIndex$9(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nCreateFullTextIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createPredictiveIndex$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nCreatePredictiveIndex(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createValueIndex$7(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nCreateValueIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createVectorIndex$11(Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZLjava/lang/Long;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move/from16 v21, p19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface/range {v0 .. v21}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nCreateVectorIndex(JLjava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V

    return-void
.end method

.method private synthetic lambda$deleteIndex$14(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nDeleteIndex(JLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$get$1(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nGetCollection(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDocumentExpiration$3(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nGetDocExpiration(JLjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getIndex$13(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nGetIndex(JLjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getIndexesInfo$12(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nGetIndexesInfo(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$purgeDocument$4(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nPurgeDoc(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setDocumentExpiration$2(Ljava/lang/String;JLjava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nSetDocExpiration(JLjava/lang/String;J)V

    return-void
.end method

.method public static synthetic m0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$getIndexesInfo$12(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/couchbase/lite/internal/core/C4Collection;->lambda$createFullTextIndex$9(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public createArrayIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/yw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/yw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public createCollectionObserver(Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/fx;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/fx;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    return-object p0
.end method

.method public createDocument(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Document;->create(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentObserver(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4DocumentObserver;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xw;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/xw;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    return-object p0
.end method

.method public createFullTextIndex(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v8, Lcom/sunia/HTREnginev2/zw;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sunia/HTREnginev2/zw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public createPredictiveIndex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/qw;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/qw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public createValueIndex(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v6, Lcom/sunia/HTREnginev2/ww;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/ww;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public createVectorIndex(Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move/from16 v20, p19

    new-instance v0, Lcom/sunia/HTREnginev2/cx;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v20}, Lcom/sunia/HTREnginev2/cx;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public deleteIndex(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/uw;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/uw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public getDb()Lcom/couchbase/lite/internal/core/C4Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->db:Lcom/couchbase/lite/internal/core/C4Database;

    return-object p0
.end method

.method public getDocument(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const-string v0, "doc ID"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->get(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentCount()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/ax;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/ax;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocumentExpiration(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/dx;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/dx;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getDocumentWithRevs(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const-string v0, "doc ID"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->getWithRevs(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Index;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Database.getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/nw;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/nw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Index;->create(J)Lcom/couchbase/lite/internal/core/C4Index;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getIndexesInfo()Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/vw;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Collection;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Collection;->impl:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/bx;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/bx;-><init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public purgeDocument(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ow;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ow;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public setDocumentExpiration(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/tw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/tw;-><init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4Collection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
