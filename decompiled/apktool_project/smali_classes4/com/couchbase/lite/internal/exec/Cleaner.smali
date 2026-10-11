.class public final Lcom/couchbase/lite/internal/exec/Cleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;,
        Lcom/couchbase/lite/internal/exec/Cleaner$Stats;
    }
.end annotation


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/exec/CleanerImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x7d0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/exec/Cleaner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/couchbase/lite/internal/exec/CleanerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-cleaner"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/internal/exec/CleanerImpl;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance p1, Lcom/couchbase/lite/internal/exec/b;

    invoke-direct {p1, v0}, Lcom/couchbase/lite/internal/exec/b;-><init>(Lcom/couchbase/lite/internal/exec/CleanerImpl;)V

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->register(Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    .line 5
    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/Cleaner;->impl:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/internal/exec/CleanerImpl;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/exec/Cleaner;->lambda$new$0(Lcom/couchbase/lite/internal/exec/CleanerImpl;Z)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/couchbase/lite/internal/exec/CleanerImpl;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->stopCleaner()V

    return-void
.end method


# virtual methods
.method public getStats()Lcom/couchbase/lite/internal/exec/Cleaner$Stats;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/Cleaner;->impl:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->getStats()Lcom/couchbase/lite/internal/exec/Cleaner$Stats;

    move-result-object p0

    return-object p0
.end method

.method public isStopped()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/Cleaner;->impl:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->isStopped()Z

    move-result p0

    return p0
.end method

.method public register(Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/Cleaner;->impl:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->register(Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    move-result-object p0

    return-object p0
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/Cleaner;->impl:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->stopCleaner()V

    return-void
.end method
