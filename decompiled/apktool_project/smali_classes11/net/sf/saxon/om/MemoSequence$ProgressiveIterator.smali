.class public final Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/om/MemoSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressiveIterator"
.end annotation


# static fields
.field public static final synthetic g:Z


# instance fields
.field public e:Lnet/sf/saxon/om/MemoSequence;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/MemoSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    iput-object p1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    return-void
.end method


# virtual methods
.method public final f()Lnet/sf/saxon/om/GroundedValue;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object p0

    aget-object p0, p0, v2

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result p0

    invoke-interface {v0, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iput v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result p0

    return p0
.end method

.method public getMemoSequence()Lnet/sf/saxon/om/MemoSequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    return-object p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    if-eq v0, v1, :cond_3

    iget v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iput v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {p0}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v0}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iput v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    iget-object v4, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v4}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1}, Lnet/sf/saxon/om/MemoSequence;->b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;

    move-result-object v1

    iget p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    aget-object p0, v1, p0

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1}, Lnet/sf/saxon/om/MemoSequence;->c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v1, v4, :cond_2

    iput v3, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    monitor-exit v0

    return-object v2

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1}, Lnet/sf/saxon/om/MemoSequence;->e(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1, v4}, Lnet/sf/saxon/om/MemoSequence;->d(Lnet/sf/saxon/om/MemoSequence;Lnet/sf/saxon/om/MemoSequence$State;)Lnet/sf/saxon/om/MemoSequence$State;

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v1}, Lnet/sf/saxon/om/MemoSequence;->f(Lnet/sf/saxon/om/MemoSequence;)V

    iput v3, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    monitor-exit v0

    return-object v2

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v2}, Lnet/sf/saxon/om/MemoSequence;->a(Lnet/sf/saxon/om/MemoSequence;)I

    move-result v2

    iput v2, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->f:I

    iget-object v2, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    invoke-static {v2, v1}, Lnet/sf/saxon/om/MemoSequence;->g(Lnet/sf/saxon/om/MemoSequence;Lnet/sf/saxon/om/Item;)V

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;->e:Lnet/sf/saxon/om/MemoSequence;

    sget-object v2, Lnet/sf/saxon/om/MemoSequence$State;->MAYBE_MORE:Lnet/sf/saxon/om/MemoSequence$State;

    invoke-static {p0, v2}, Lnet/sf/saxon/om/MemoSequence;->d(Lnet/sf/saxon/om/MemoSequence;Lnet/sf/saxon/om/MemoSequence$State;)Lnet/sf/saxon/om/MemoSequence$State;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
