.class public Lcom/google/common/collect/Streams$e;
.super Lcom/google/common/collect/Streams$k;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Ljava/util/stream/IntStream;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Streams$k<",
        "Ljava/util/Spliterator$OfInt;",
        "TR;",
        "Lcom/google/common/collect/Streams$e;",
        ">;",
        "Ljava/util/function/IntConsumer;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public g:I

.field public final synthetic h:Lcom/google/common/collect/Streams$IntFunctionWithIndex;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfInt;",
            "J)V"
        }
    .end annotation

    iput-object p4, p0, Lcom/google/common/collect/Streams$e;->h:Lcom/google/common/collect/Streams$IntFunctionWithIndex;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$k;-><init>(Ljava/util/Spliterator;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$k;
    .locals 0

    check-cast p1, Ljava/util/Spliterator$OfInt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$e;->c(Ljava/util/Spliterator$OfInt;J)Lcom/google/common/collect/Streams$e;

    move-result-object p0

    return-object p0
.end method

.method public accept(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/Streams$e;->g:I

    return-void
.end method

.method public c(Ljava/util/Spliterator$OfInt;J)Lcom/google/common/collect/Streams$e;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Streams$e;

    iget-object p0, p0, Lcom/google/common/collect/Streams$e;->h:Lcom/google/common/collect/Streams$IntFunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/common/collect/Streams$e;-><init>(Ljava/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Streams$k;->e:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Streams$e;->h:Lcom/google/common/collect/Streams$IntFunctionWithIndex;

    iget v1, p0, Lcom/google/common/collect/Streams$e;->g:I

    iget-wide v2, p0, Lcom/google/common/collect/Streams$k;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/common/collect/Streams$k;->f:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/collect/Streams$IntFunctionWithIndex;->apply(IJ)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
