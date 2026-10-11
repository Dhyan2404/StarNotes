.class public Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$HasLocalNamespaces;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HasLocalNamespaces"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE$HasLocalNamespaces;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p1, p2, p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    .line 3
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    if-eq p1, p2, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 6
    :cond_1
    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method
