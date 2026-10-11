.class public abstract Lio/opencensus/metrics/data/Exemplar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(DLio/opencensus/common/Timestamp;Ljava/util/Map;)Lio/opencensus/metrics/data/Exemplar;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lio/opencensus/common/Timestamp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/metrics/data/AttachmentValue;",
            ">;)",
            "Lio/opencensus/metrics/data/Exemplar;"
        }
    .end annotation

    const-string v0, "attachments"

    invoke-static {p3, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key of attachments"

    invoke-static {v2, v3}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value of attachments"

    invoke-static {v1, v2}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/tj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/tj;-><init>(DLio/opencensus/common/Timestamp;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public abstract getAttachments()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/opencensus/metrics/data/AttachmentValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()Lio/opencensus/common/Timestamp;
.end method

.method public abstract getValue()D
.end method
