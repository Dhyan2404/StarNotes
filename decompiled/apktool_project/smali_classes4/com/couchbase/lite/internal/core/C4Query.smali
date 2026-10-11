.class public final Lcom/couchbase/lite/internal/core/C4Query;
.super Lcom/couchbase/lite/internal/core/C4Peer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Query;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;J)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/mz;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/mz;-><init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/couchbase/lite/internal/core/C4Peer;-><init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Query;->impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4Query;ILjava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Query;->lambda$getColumnNameForIndex$3(ILjava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/QueryLanguage;
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
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Query;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Query;->create(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/QueryLanguage;
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
    new-instance v0, Lcom/sunia/HTREnginev2/sz;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/sz;-><init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Query;

    return-object p0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Query;->lambda$run$2(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Query;->lambda$create$0(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$0(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/QueryLanguage;->getCode()I

    move-result p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;->nCreateQuery(JILjava/lang/String;)J

    move-result-wide p1

    new-instance p3, Lcom/couchbase/lite/internal/core/C4Query;

    invoke-direct {p3, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Query;-><init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;J)V

    return-object p3
.end method

.method private synthetic lambda$getColumnNameForIndex$3(ILjava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Query;->impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;->nColumnName(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$run$2(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Query;->impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getBase()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getSize()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;->nRun(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->create(J)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setParameters$1(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Query;->impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getBase()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getSize()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;->nSetParameters(JJJ)V

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Query;->lambda$setParameters$1(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public explain()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Query;->impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nz;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/nz;-><init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getColumnCount()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Query;->impl:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/rz;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/rz;-><init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getColumnNameForIndex(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/qz;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/qz;-><init>(Lcom/couchbase/lite/internal/core/C4Query;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public run(Lcom/couchbase/lite/internal/fleece/FLSliceResult;)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
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

    new-instance v0, Lcom/sunia/HTREnginev2/oz;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/oz;-><init>(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    return-object p0
.end method

.method public setParameters(Lcom/couchbase/lite/internal/fleece/FLSliceResult;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/pz;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/pz;-><init>(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
