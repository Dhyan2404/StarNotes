.class public Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/om/Item;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->a:Lnet/sf/saxon/om/Item;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object p3, p0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;->b:Ljava/util/List;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2, p4}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
