.class public Lcom/sunia/HTREnginev2/vzd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/vzd;->g(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Spliterator$OfInt;

.field public final synthetic f:Ljava/util/function/IntFunction;

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfInt;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vzd$c;->f:Ljava/util/function/IntFunction;

    iput p3, p0, Lcom/sunia/HTREnginev2/vzd$c;->g:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/vzd$c;->h:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vzd$c;->e:Ljava/util/Spliterator$OfInt;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/vzd$c;->d(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/vzd$c;->c(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/vzd$c;->g:I

    or-int/lit16 p0, p0, 0x4050

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzd$c;->e:Ljava/util/Spliterator$OfInt;

    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$c;->e:Ljava/util/Spliterator$OfInt;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzd$c;->f:Ljava/util/function/IntFunction;

    new-instance v1, Lcom/sunia/HTREnginev2/wzd;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/wzd;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzd$c;->h:Ljava/util/Comparator;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$c;->e:Ljava/util/Spliterator$OfInt;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzd$c;->f:Ljava/util/function/IntFunction;

    new-instance v1, Lcom/sunia/HTREnginev2/xzd;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/xzd;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vzd$c;->e:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0}, Ljava/util/Spliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/vzd$c;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/vzd$c;->f:Ljava/util/function/IntFunction;

    iget v3, p0, Lcom/sunia/HTREnginev2/vzd$c;->g:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzd$c;->h:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/sunia/HTREnginev2/vzd$c;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
