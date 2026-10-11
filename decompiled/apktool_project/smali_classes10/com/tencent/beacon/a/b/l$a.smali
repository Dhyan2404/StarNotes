.class final Lcom/tencent/beacon/a/b/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/a/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:J

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/a/b/l$a;->e:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/tencent/beacon/a/b/l$a;->a:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/tencent/beacon/a/b/l$a;->b:J

    iput-wide p5, p0, Lcom/tencent/beacon/a/b/l$a;->c:J

    iput-object p7, p0, Lcom/tencent/beacon/a/b/l$a;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/a/b/l$a;)Ljava/lang/Runnable;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/beacon/a/b/l$a;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/beacon/a/b/l$a;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/b/l$a;->e:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method public static synthetic b(Lcom/tencent/beacon/a/b/l$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/a/b/l$a;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/tencent/beacon/a/b/l$a;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/a/b/l$a;->d:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/tencent/beacon/a/b/l$a;->e:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public a(Z)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tencent/beacon/a/b/l$a;->e:Ljava/util/concurrent/Future;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p0

    return p0
.end method
