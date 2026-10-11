.class public Lnet/sf/saxon/trace/TraceEventMulticaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/TraceListener;


# instance fields
.field protected final a:Lnet/sf/saxon/lib/TraceListener;

.field protected final b:Lnet/sf/saxon/lib/TraceListener;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    iput-object p2, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    return-void
.end method

.method public static add(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->addInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0

    return-object p0
.end method

.method public static addInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trace/TraceEventMulticaster;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;-><init>(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)V

    return-object v0
.end method

.method public static remove(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->removeInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0

    return-object p0
.end method

.method public static removeInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;
    .locals 1

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/trace/TraceEventMulticaster;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->remove(Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0}, Lnet/sf/saxon/lib/TraceListener;->close()V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0}, Lnet/sf/saxon/lib/TraceListener;->close()V

    return-void
.end method

.method public endCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/TraceListener;->endCurrentItem(Lnet/sf/saxon/om/Item;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/TraceListener;->endCurrentItem(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/lib/TraceListener;->endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/lib/TraceListener;->endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
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

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public leave(Lnet/sf/saxon/trace/Traceable;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    return-void
.end method

.method public open(Lnet/sf/saxon/Controller;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/TraceListener;->open(Lnet/sf/saxon/Controller;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/TraceListener;->open(Lnet/sf/saxon/Controller;)V

    return-void
.end method

.method public remove(Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    return-object p0

    .line 3
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    if-ne p1, v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {v0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->removeInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-static {v1, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->removeInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    if-ne p1, v1, :cond_2

    return-object p0

    .line 7
    :cond_2
    invoke-static {v0, p1}, Lnet/sf/saxon/trace/TraceEventMulticaster;->addInternal(Lnet/sf/saxon/lib/TraceListener;Lnet/sf/saxon/lib/TraceListener;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0

    return-object p0
.end method

.method public setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/TraceListener;->setOutputDestination(Lnet/sf/saxon/lib/Logger;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/TraceListener;->setOutputDestination(Lnet/sf/saxon/lib/Logger;)V

    return-void
.end method

.method public startCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/TraceListener;->startCurrentItem(Lnet/sf/saxon/om/Item;)V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/TraceListener;->startCurrentItem(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public startRuleSearch()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->a:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {v0}, Lnet/sf/saxon/lib/TraceListener;->startRuleSearch()V

    iget-object p0, p0, Lnet/sf/saxon/trace/TraceEventMulticaster;->b:Lnet/sf/saxon/lib/TraceListener;

    invoke-interface {p0}, Lnet/sf/saxon/lib/TraceListener;->startRuleSearch()V

    return-void
.end method
