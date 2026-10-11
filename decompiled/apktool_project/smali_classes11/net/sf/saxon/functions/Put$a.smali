.class public Lnet/sf/saxon/functions/Put$a;
.super Lnet/sf/saxon/expr/SystemFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/Put;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lnet/sf/saxon/functions/Put;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/Put;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/Put$a;->p:Lnet/sf/saxon/functions/Put;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Node in put() must be a document or element node"

    const-string v0, "FOUP0001"

    invoke-direct {p0, p2, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/Put$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fn:put writing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1, p0}, Lnet/sf/saxon/expr/PendingUpdateList;->addPutAction(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/Put$a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FOUP0002"

    invoke-direct {v0, p0, p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public isUpdatingExpression()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
