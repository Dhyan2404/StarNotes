.class public final Lcom/couchbase/lite/internal/core/C4Prediction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;
    }
.end annotation


# static fields
.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final PREDICTION_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4Prediction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final model:Lcom/couchbase/lite/PredictiveModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final token:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Prediction;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Prediction;->PREDICTION_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Prediction;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Prediction;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Prediction;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;Ljava/lang/String;Lcom/couchbase/lite/PredictiveModel;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/PredictiveModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->impl:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->model:Lcom/couchbase/lite/PredictiveModel;

    sget-object p1, Lcom/couchbase/lite/internal/core/C4Prediction;->PREDICTION_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->token:J

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/couchbase/lite/PredictiveModel;)Lcom/couchbase/lite/internal/core/C4Prediction;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/PredictiveModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Prediction;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Prediction;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Prediction;-><init>(Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;Ljava/lang/String;Lcom/couchbase/lite/PredictiveModel;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Prediction;JJ)Lcom/couchbase/lite/Dictionary;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Prediction;->lambda$predict$0(JJ)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$predict$0(JJ)Lcom/couchbase/lite/Dictionary;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->model:Lcom/couchbase/lite/PredictiveModel;

    new-instance v0, Lcom/couchbase/lite/internal/fleece/MRoot;

    new-instance v1, Lcom/couchbase/lite/internal/DbContext;

    new-instance v2, Lcom/couchbase/lite/internal/ShellDb;

    invoke-direct {v2, p1, p2}, Lcom/couchbase/lite/internal/ShellDb;-><init>(J)V

    invoke-direct {v1, v2}, Lcom/couchbase/lite/internal/DbContext;-><init>(Lcom/couchbase/lite/BaseDatabase;)V

    invoke-static {p3, p4}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/MRoot;-><init>(Lcom/couchbase/lite/internal/fleece/MContext;Lcom/couchbase/lite/internal/fleece/FLValue;Z)V

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MRoot;->asNative()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Dictionary;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/PredictiveModel;->predict(Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method private predict(JJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/exec/ClientTask;

    new-instance v7, Lcom/sunia/HTREnginev2/lz;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/lz;-><init>(Lcom/couchbase/lite/internal/core/C4Prediction;JJ)V

    invoke-direct {v0, v7}, Lcom/couchbase/lite/internal/exec/ClientTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/exec/ClientTask;->execute()V

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/exec/ClientTask;->getFailure()Ljava/lang/Exception;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object p2, Lcom/couchbase/lite/internal/core/C4Prediction;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p3, "Prediction model failed"

    invoke-static {p2, p3, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/exec/ClientTask;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Dictionary;

    if-nez p0, :cond_1

    sget-object p0, Lcom/couchbase/lite/internal/core/C4Prediction;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p2, "Null prediction"

    invoke-static {p0, p2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getManagedEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object p2
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Dictionary;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->finish3()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/couchbase/lite/internal/core/C4Prediction;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p3, "Failed encoding a predictive result"

    invoke-static {p2, p3, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static prediction(JJJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Prediction;->PREDICTION_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Prediction;

    sget-object p1, Lcom/couchbase/lite/internal/core/C4Prediction;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "C4Prediction.prediction: %s (%x, %x)"

    invoke-static {p1, v1, v0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/C4Prediction;->predict(JJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Prediction;->PREDICTION_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->impl:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->name:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;->nUnregisterModel(Ljava/lang/String;)V

    return-void
.end method

.method public register()V
    .locals 4

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Prediction;->PREDICTION_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->token:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->impl:Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->token:J

    invoke-interface {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/core/C4Prediction$NativeImpl;->nRegisterModel(Ljava/lang/String;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4Prediction{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Prediction;->model:Lcom/couchbase/lite/PredictiveModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
