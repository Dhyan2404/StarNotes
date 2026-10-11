.class public Lnet/sf/saxon/functions/Sort_2;
.super Lnet/sf/saxon/functions/Sort_1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/Sort_1;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/Sort_1;->getItemsToBeSorted(Lnet/sf/saxon/om/Sequence;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Sort_2;->getCollation(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/functions/Sort_1;->doSort(Ljava/util/ArrayList;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getCollation(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/lib/StringCollator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    return-object p0
.end method
