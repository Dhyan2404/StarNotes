.class final Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/exec/CleanerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CleanableRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;"
    }
.end annotation


# instance fields
.field private final cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

.field private final ts:J


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/exec/CleanerImpl;Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/exec/CleanerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {p1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$500(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->ts:J

    return-void
.end method

.method public static synthetic access$800(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;)J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->ts:J

    return-wide v0
.end method


# virtual methods
.method public clean(Z)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$600(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$600(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v2}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$600(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v3}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$700(Lcom/couchbase/lite/internal/exec/CleanerImpl;)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->this$0:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {v3, v2}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$702(Lcom/couchbase/lite/internal/exec/CleanerImpl;I)I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "%s was not alive at attempt to clean"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    invoke-interface {v0, p1}, Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;->clean(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v1

    const-string v2, "Failed cleaning: %s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->name:Ljava/lang/String;

    aput-object p0, v3, v4

    if-eqz p1, :cond_2

    const-string p0, "!"

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v1, v2, v0, v3}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;

    iget-object p1, p1, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CleanableRef{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->cleanable:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
