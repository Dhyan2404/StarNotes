.class public Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/DistinctValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistinctIterator"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/lib/StringCollator;

.field public final g:Lnet/sf/saxon/expr/XPathContext;

.field public final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->h:Ljava/util/HashSet;

    iput-object p1, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->f:Lnet/sf/saxon/lib/StringCollator;

    iput-object p3, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v0

    .line 3
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lnet/sf/saxon/functions/DistinctValues;->NaN_MATCH_KEY:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    goto :goto_0

    .line 6
    :cond_2
    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->f:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/functions/DistinctValues$DistinctIterator;->h:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method
