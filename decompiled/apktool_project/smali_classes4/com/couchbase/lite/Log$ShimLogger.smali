.class final Lcom/couchbase/lite/Log$ShimLogger;
.super Lcom/couchbase/lite/logging/BaseLogSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShimLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/Log;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Log;Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Log;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/Log$ShimLogger;->this$0:Lcom/couchbase/lite/Log;

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/logging/BaseLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public isLegacy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/logging/LogSinks;->getCustom()Lcom/couchbase/lite/logging/BaseLogSink;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Log$ShimLogger;->this$0:Lcom/couchbase/lite/Log;

    invoke-static {v0}, Lcom/couchbase/lite/Log;->access$000(Lcom/couchbase/lite/Log;)Lcom/couchbase/lite/Logger;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lcom/couchbase/lite/Logger;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object p1

    invoke-interface {v0}, Lcom/couchbase/lite/Logger;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object p2

    if-eq p1, p2, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/Log$ShimLogger;->this$0:Lcom/couchbase/lite/Log;

    invoke-static {p0, v0}, Lcom/couchbase/lite/Log;->access$100(Lcom/couchbase/lite/Log;Lcom/couchbase/lite/Logger;)V

    :cond_2
    return-void
.end method
