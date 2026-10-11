.class public abstract Lcom/sunia/HTREnginev2/vzd$i;
.super Lcom/sunia/HTREnginev2/vzd$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/vzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutConsumerT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Ljava/util/Spliterator$OfPrimitive<",
        "TOutElementT;TOutConsumerT;TOutSpliteratorT;>;>",
        "Lcom/sunia/HTREnginev2/vzd$d<",
        "TInElementT;TOutElementT;TOutSpliteratorT;>;",
        "Ljava/util/Spliterator$OfPrimitive<",
        "TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/sunia/HTREnginev2/vzd$d$a;IJ)V
    .locals 0
    .param p1    # Ljava/util/Spliterator$OfPrimitive;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;",
            "Lcom/sunia/HTREnginev2/vzd$d$a<",
            "TInElementT;TOutSpliteratorT;>;IJ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/sunia/HTREnginev2/vzd$d;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/sunia/HTREnginev2/vzd$d$a;IJ)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vzd$d;->e:Ljava/util/Spliterator;

    return-void
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/vzd$i;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/vzd$i;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/vzd$i;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/vzd$i;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzd$d;->g:Ljava/util/function/Function;

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Spliterator$OfPrimitive;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutConsumerT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->e:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->e:Ljava/util/Spliterator;

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->f:Ljava/util/Spliterator;

    new-instance v1, Lcom/sunia/HTREnginev2/e0e;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/e0e;-><init>(Lcom/sunia/HTREnginev2/vzd$i;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->j:J

    return-void
.end method

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutConsumerT;)Z"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->e:Ljava/util/Spliterator;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->j:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->j:J

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->e:Ljava/util/Spliterator;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$d;->f:Ljava/util/Spliterator;

    new-instance v1, Lcom/sunia/HTREnginev2/f0e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f0e;-><init>(Lcom/sunia/HTREnginev2/vzd$i;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0}, Lcom/sunia/HTREnginev2/vzd$d;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava/util/Spliterator$OfPrimitive;

    return-object p0
.end method
