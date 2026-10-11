.class public final synthetic Lcom/sunia/HTREnginev2/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/core/C4Prediction;

.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Prediction;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lz;->e:Lcom/couchbase/lite/internal/core/C4Prediction;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/lz;->f:J

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/lz;->g:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lz;->e:Lcom/couchbase/lite/internal/core/C4Prediction;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/lz;->f:J

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/lz;->g:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/couchbase/lite/internal/core/C4Prediction;->f(Lcom/couchbase/lite/internal/core/C4Prediction;JJ)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method
