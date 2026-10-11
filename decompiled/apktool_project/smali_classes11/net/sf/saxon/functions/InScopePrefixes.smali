.class public Lnet/sf/saxon/functions/InScopePrefixes;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p1, p2, p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->getPrefixArray()[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    :goto_0
    if-ge p0, v0, :cond_0

    aget-object v1, p1, p0

    new-instance v2, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "xml"

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
