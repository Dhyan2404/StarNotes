.class public Lcom/sunia/HTREnginev2/a0i;
.super Lorg/apache/http/pool/AbstractConnPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/a0i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/AbstractConnPool<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/OperatedClientConnection;",
        "Lcom/sunia/HTREnginev2/j0i;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final t:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final q:Lorg/apache/commons/logging/Log;

.field public final r:J

.field public final s:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/a0i;->t:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/conn/ClientConnectionOperator;IIJLjava/util/concurrent/TimeUnit;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/a0i$a;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/a0i$a;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;)V

    invoke-direct {p0, v0, p3, p4}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0i;->q:Lorg/apache/commons/logging/Log;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/a0i;->r:J

    iput-object p7, p0, Lcom/sunia/HTREnginev2/a0i;->s:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 0

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    check-cast p2, Lorg/apache/http/conn/OperatedClientConnection;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/a0i;->k(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/OperatedClientConnection;)Lcom/sunia/HTREnginev2/j0i;

    move-result-object p0

    return-object p0
.end method

.method public k(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/OperatedClientConnection;)Lcom/sunia/HTREnginev2/j0i;
    .locals 10

    sget-object v0, Lcom/sunia/HTREnginev2/a0i;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/sunia/HTREnginev2/j0i;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/a0i;->q:Lorg/apache/commons/logging/Log;

    iget-wide v7, p0, Lcom/sunia/HTREnginev2/a0i;->r:J

    iget-object v9, p0, Lcom/sunia/HTREnginev2/a0i;->s:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/sunia/HTREnginev2/j0i;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
