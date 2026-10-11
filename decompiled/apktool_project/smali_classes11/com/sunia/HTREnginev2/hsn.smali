.class public final Lcom/sunia/HTREnginev2/hsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lonyx/org/apache/commons/io/function/IOSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOSpliterator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/function/IOSpliterator;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->characteristics()I

    move-result p0

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/dsn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dsn;-><init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sunia/HTREnginev2/esn;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/esn;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->getComparator()Lonyx/org/apache/commons/io/function/IOComparator;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOComparator;->asComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOSpliterator;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/fsn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/fsn;-><init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sunia/HTREnginev2/esn;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/esn;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsn;->e:Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/gsn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gsn;-><init>(Lonyx/org/apache/commons/io/function/IOSpliterator;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/function/IOSpliterator;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
