.class public final Lnet/sf/saxon/expr/ContextMappingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/FocusIterator;

.field public final f:Lnet/sf/saxon/expr/ContextMappingFunction;

.field public final g:Lnet/sf/saxon/expr/XPathContext;

.field public h:Lnet/sf/saxon/om/SequenceIterator;

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->e:Lnet/sf/saxon/om/FocusIterator;

    iput-object p1, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->f:Lnet/sf/saxon/expr/ContextMappingFunction;

    iput-object p2, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->e:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_0
    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->e:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->i:Z

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->e:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->f:Lnet/sf/saxon/expr/ContextMappingFunction;

    iget-object v2, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0, v2}, Lnet/sf/saxon/expr/ContextMappingFunction;->map(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    iget-boolean v2, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->i:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_4
    iput-object v1, p0, Lnet/sf/saxon/expr/ContextMappingIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    return-object v1
.end method
