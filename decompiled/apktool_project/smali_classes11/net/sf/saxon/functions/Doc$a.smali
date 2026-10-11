.class public final Lnet/sf/saxon/functions/Doc$a;
.super Lnet/sf/saxon/expr/SystemFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/Doc;->maybePreEvaluate(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lnet/sf/saxon/functions/SystemFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/functions/SystemFunction;)V
    .locals 0

    iput-object p3, p0, Lnet/sf/saxon/functions/Doc$a;->p:Lnet/sf/saxon/functions/SystemFunction;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/Doc$a;->preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    return-object p0

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/functions/Doc$a;->p:Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {v2}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/functions/Doc$a;->p:Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {v3}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-static {v1, v2, v3, p1, v4}, Lnet/sf/saxon/functions/DocumentFn;->preLoadDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/Configuration;Ljavax/xml/transform/SourceLocator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    return-object p0
.end method
