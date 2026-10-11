.class public final synthetic Lcom/sunia/HTREnginev2/mei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOConsumer;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic g:Ljava/util/function/BiFunction;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mei;->e:Lonyx/org/apache/commons/io/function/IOConsumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mei;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mei;->g:Ljava/util/function/BiFunction;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/mei;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mei;->e:Lonyx/org/apache/commons/io/function/IOConsumer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mei;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/mei;->g:Ljava/util/function/BiFunction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mei;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, p0, p1}, Lonyx/org/apache/commons/io/function/IOStream;->Q(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V

    return-void
.end method
