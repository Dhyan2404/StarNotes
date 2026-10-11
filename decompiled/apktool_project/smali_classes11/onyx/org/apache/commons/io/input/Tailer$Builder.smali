.class public Lonyx/org/apache/commons/io/input/Tailer$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/Tailer;",
        "Lonyx/org/apache/commons/io/input/Tailer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Ljava/time/Duration;


# instance fields
.field public l:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

.field public m:Lonyx/org/apache/commons/io/input/TailerListener;

.field public n:Ljava/time/Duration;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->s:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    sget-object v0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->s:Ljava/time/Duration;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->n:Ljava/time/Duration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->q:Z

    new-instance v0, Lcom/sunia/HTREnginev2/e9n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e9n;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->r:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic g(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->h(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-tailer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/Tailer;
    .locals 10

    .line 2
    new-instance v9, Lonyx/org/apache/commons/io/input/Tailer;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->l:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object v3, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->m:Lonyx/org/apache/commons/io/input/TailerListener;

    iget-object v4, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->n:Ljava/time/Duration;

    iget-boolean v5, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->o:Z

    iget-boolean v6, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->p:Z

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Lonyx/org/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZILonyx/org/apache/commons/io/input/Tailer$a;)V

    .line 3
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->q:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-object v9
.end method

.method public setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lonyx/org/apache/commons/io/input/Tailer$Builder;->s:Ljava/time/Duration;

    :goto_0
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->n:Ljava/time/Duration;

    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 1

    const-string v0, "executorService"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->r:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public bridge synthetic setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
            "**>;)",
            "Lonyx/org/apache/commons/io/input/Tailer$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/Tailer$c;

    invoke-virtual {p1}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lonyx/org/apache/commons/io/input/Tailer$c;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lonyx/org/apache/commons/io/input/Tailer$a;)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailable(Lonyx/org/apache/commons/io/input/Tailer$Tailable;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 3
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lonyx/org/apache/commons/io/build/AbstractOrigin;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    return-object p0
.end method

.method public setReOpen(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->p:Z

    return-object p0
.end method

.method public setStartThread(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->q:Z

    return-object p0
.end method

.method public setTailFromEnd(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->o:Z

    return-object p0
.end method

.method public setTailable(Lonyx/org/apache/commons/io/input/Tailer$Tailable;)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 1

    const-string v0, "tailable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->l:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    return-object p0
.end method

.method public setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 1

    const-string v0, "tailerListener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/input/TailerListener;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;->m:Lonyx/org/apache/commons/io/input/TailerListener;

    return-object p0
.end method
