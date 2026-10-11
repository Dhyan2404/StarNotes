.class public Lnet/sf/saxon/expr/flwor/TraceClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public final b:Lnet/sf/saxon/expr/flwor/Clause;

.field public final c:Lnet/sf/saxon/expr/flwor/TraceClause;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/TraceClause;Lnet/sf/saxon/expr/flwor/Clause;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->c:Lnet/sf/saxon/expr/flwor/TraceClause;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->b:Lnet/sf/saxon/expr/flwor/Clause;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/flwor/ClauseInfo;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->b:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/flwor/ClauseInfo;-><init>(Lnet/sf/saxon/expr/flwor/Clause;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->c:Lnet/sf/saxon/expr/flwor/TraceClause;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/TraceClause;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/flwor/ClauseInfo;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->b:Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/Clause;->getTraceInfo()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3, p1}, Lnet/sf/saxon/lib/TraceListener;->enter(Lnet/sf/saxon/trace/Traceable;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lnet/sf/saxon/lib/TraceListener;->leave(Lnet/sf/saxon/trace/Traceable;)V

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/TraceClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method
