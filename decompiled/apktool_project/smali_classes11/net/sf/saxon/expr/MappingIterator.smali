.class public Lnet/sf/saxon/expr/MappingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/expr/MappingFunction;

.field public g:Lnet/sf/saxon/om/SequenceIterator;

.field public h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p1, p0, Lnet/sf/saxon/expr/MappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/expr/MappingIterator;->f:Lnet/sf/saxon/expr/MappingFunction;

    return-void
.end method

.method public static map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/MappingIterator;

    invoke-static {p1}, Lnet/sf/saxon/expr/SequenceMapper;->of(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/SequenceMapper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/MappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/MappingIterator;->h:Z

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/expr/MappingIterator;->f:Lnet/sf/saxon/expr/MappingFunction;

    invoke-interface {v2, v0}, Lnet/sf/saxon/expr/MappingFunction;->map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iget-boolean v2, p0, Lnet/sf/saxon/expr/MappingIterator;->h:Z

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    :cond_3
    if-eqz v0, :cond_0

    iput-object v0, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_4

    iput-object v1, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    iput-object v1, p0, Lnet/sf/saxon/expr/MappingIterator;->g:Lnet/sf/saxon/om/SequenceIterator;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method
