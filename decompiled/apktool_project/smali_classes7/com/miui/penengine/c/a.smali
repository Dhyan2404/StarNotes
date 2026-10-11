.class public final enum Lcom/miui/penengine/c/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/penengine/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/miui/penengine/c/a;

.field public static final synthetic c:[Lcom/miui/penengine/c/a;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/penengine/c/a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/penengine/c/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/penengine/c/a;->b:Lcom/miui/penengine/c/a;

    invoke-static {}, Lcom/miui/penengine/c/a;->a()[Lcom/miui/penengine/c/a;

    move-result-object v0

    sput-object v0, Lcom/miui/penengine/c/a;->c:[Lcom/miui/penengine/c/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0xa

    invoke-direct {v6, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {}, Lcom/miui/penengine/c/a;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x3c

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/miui/penengine/c/a;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PenEngine-GlobalThreadPool-"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a()[Lcom/miui/penengine/c/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/penengine/c/a;->b:Lcom/miui/penengine/c/a;

    filled-new-array {v0}, [Lcom/miui/penengine/c/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ThreadFactory;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Lcom/sunia/HTREnginev2/xxo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/xxo;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/penengine/c/a;
    .locals 1

    const-class v0, Lcom/miui/penengine/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/penengine/c/a;

    return-object p0
.end method

.method public static values()[Lcom/miui/penengine/c/a;
    .locals 1

    sget-object v0, Lcom/miui/penengine/c/a;->c:[Lcom/miui/penengine/c/a;

    invoke-virtual {v0}, [Lcom/miui/penengine/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/penengine/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/miui/penengine/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
