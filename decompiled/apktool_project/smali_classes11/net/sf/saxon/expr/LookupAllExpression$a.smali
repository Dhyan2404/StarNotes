.class public Lnet/sf/saxon/expr/LookupAllExpression$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/expr/LookupAllExpression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/ma/map/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lnet/sf/saxon/om/SequenceIterator;

.field public final synthetic i:Lnet/sf/saxon/expr/XPathContext;

.field public final synthetic j:Lnet/sf/saxon/expr/LookupAllExpression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/LookupAllExpression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->j:Lnet/sf/saxon/expr/LookupAllExpression;

    iput-object p2, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->i:Lnet/sf/saxon/expr/XPathContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->f:Ljava/util/Iterator;

    iput-object p1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->g:Ljava/util/Iterator;

    iput-object p1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_1
    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    :cond_1
    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->f:Ljava/util/Iterator;

    if-nez v0, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->g:Ljava/util/Iterator;

    if-nez v2, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v2, :cond_1

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->f:Ljava/util/Iterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LookupAllExpression$a;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v2, v0, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v2, :cond_2

    check-cast v0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->g:Ljava/util/Iterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LookupAllExpression$a;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->j:Lnet/sf/saxon/expr/LookupAllExpression;

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/LookupExpression;->mustBeArrayOrMap(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->g:Ljava/util/Iterator;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_0

    :cond_5
    iput-object v1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->g:Ljava/util/Iterator;

    iput-object v1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->f:Ljava/util/Iterator;

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/LookupAllExpression$a;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_7

    iput-object v1, p0, Lnet/sf/saxon/expr/LookupAllExpression$a;->h:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LookupAllExpression$a;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method
