.class public interface abstract Lonyx/org/apache/commons/io/function/IOSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static adapt(Ljava/util/Spliterator;)Lonyx/org/apache/commons/io/function/IOSpliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TE;>;)",
            "Lonyx/org/apache/commons/io/function/IOSpliterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/dei;->a(Ljava/util/Spliterator;)Lcom/sunia/HTREnginev2/dei;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asSpliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hsn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/hsn;-><init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V

    return-object v0
.end method

.method public characteristics()I
    .locals 0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result p0

    return p0
.end method

.method public estimateSize()J
    .locals 2

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOSpliterator;->tryAdvance(Lonyx/org/apache/commons/io/function/IOConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getComparator()Lonyx/org/apache/commons/io/function/IOComparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOComparator<",
            "-TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/function/IOComparator;

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Lonyx/org/apache/commons/io/function/IOConsumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    const-string v0, "action"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/function/IOConsumer;

    invoke-interface {p1}, Lonyx/org/apache/commons/io/function/IOConsumer;->asConsumer()Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public trySplit()Lonyx/org/apache/commons/io/function/IOSpliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->adapt(Ljava/util/Spliterator;)Lonyx/org/apache/commons/io/function/IOSpliterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract unwrap()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method
