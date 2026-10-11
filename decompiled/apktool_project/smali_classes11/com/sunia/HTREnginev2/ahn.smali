.class public final Lcom/sunia/HTREnginev2/ahn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljava/lang/Thread;

.field public final f:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;Ljava/time/Duration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ahn;->e:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ahn;->f:Ljava/time/Duration;

    return-void
.end method

.method public static a(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;
    .locals 2

    invoke-virtual {p1}, Ljava/time/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sunia/HTREnginev2/ahn;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/ahn;-><init>(Ljava/lang/Thread;Ljava/time/Duration;)V

    const-class p0, Lcom/sunia/HTREnginev2/ahn;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/time/Duration;)Ljava/lang/Thread;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/ahn;->a(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Thread;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ahn;->f:Ljava/time/Duration;

    invoke-static {v0}, Lonyx/org/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ahn;->e:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
