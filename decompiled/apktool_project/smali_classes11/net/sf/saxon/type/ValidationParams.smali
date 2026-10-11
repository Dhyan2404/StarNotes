.class public Lnet/sf/saxon/type/ValidationParams;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lnet/sf/saxon/om/StructuredQName;",
        "Lnet/sf/saxon/om/Sequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    return-void
.end method

.method public static setValidationParams(Ljava/util/Map;Lnet/sf/saxon/type/ValidationParams;Lnet/sf/saxon/sxpath/XPathDynamicContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/sxpath/XPathVariable;",
            ">;",
            "Lnet/sf/saxon/type/ValidationParams;",
            "Lnet/sf/saxon/sxpath/XPathDynamicContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/sxpath/XPathVariable;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Sequence;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2, v1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/sxpath/XPathVariable;->getDefaultValue()Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method
