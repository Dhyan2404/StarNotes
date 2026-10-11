.class public interface abstract Lnet/sf/saxon/lib/TraceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public endCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method

.method public endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method

.method public enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trace/Traceable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public leave(Lnet/sf/saxon/trace/Traceable;)V
    .locals 0

    return-void
.end method

.method public open(Lnet/sf/saxon/Controller;)V
    .locals 0

    return-void
.end method

.method public setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    return-void
.end method

.method public startCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    return-void
.end method

.method public startRuleSearch()V
    .locals 0

    return-void
.end method
