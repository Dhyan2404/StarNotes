.class public Lnet/sf/saxon/expr/ItemMappingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/expr/ItemMappingFunction;

.field public g:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->g:Z

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->f:Lnet/sf/saxon/expr/ItemMappingFunction;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    .line 7
    iput-object p2, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->f:Lnet/sf/saxon/expr/ItemMappingFunction;

    .line 8
    iput-boolean p3, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->g:Z

    return-void
.end method

.method public static filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-static {p1}, Lnet/sf/saxon/expr/ItemFilter;->of(Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemFilter;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    return-object v0
.end method

.method public static map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-static {p1}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getBaseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0

    return p0
.end method

.method public getMappingFunction()Lnet/sf/saxon/expr/ItemMappingFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->f:Lnet/sf/saxon/expr/ItemMappingFunction;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public isOneToOne()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->g:Z

    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->f:Lnet/sf/saxon/expr/ItemMappingFunction;

    invoke-interface {v1, v0}, Lnet/sf/saxon/expr/ItemMappingFunction;->mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public setOneToOne(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->g:Z

    return-void
.end method

.method public supportsGetLength()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportsHasNext()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemMappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
