.class public final Lcom/sunia/HTREnginev2/q5f$c;
.super Lcom/sunia/HTREnginev2/q5f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/q5f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/q5f$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/sunia/HTREnginev2/q5f$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q5f;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q5f$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/q5f$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q5f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/h5n;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q5f$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/sunia/HTREnginev2/q5f$c$a;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/h5n;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sunia/HTREnginev2/q5f$c$a;-><init>(Ljava/lang/Object;Lcom/sunia/HTREnginev2/h5n;Lcom/sunia/HTREnginev2/q5f$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q5f$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/q5f$c$a;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/q5f$c$a;->b(Lcom/sunia/HTREnginev2/q5f$c$a;)Lcom/sunia/HTREnginev2/h5n;

    move-result-object p2

    invoke-static {p1}, Lcom/sunia/HTREnginev2/q5f$c$a;->a(Lcom/sunia/HTREnginev2/q5f$c$a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/h5n;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method
