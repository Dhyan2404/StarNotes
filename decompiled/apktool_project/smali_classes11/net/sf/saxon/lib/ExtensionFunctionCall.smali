.class public abstract Lnet/sf/saxon/lib/ExtensionFunctionCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public copyLocalData(Lnet/sf/saxon/lib/ExtensionFunctionCall;)V
    .locals 0

    return-void
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public final getDefinition()Lnet/sf/saxon/lib/ExtensionFunctionDefinition;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ExtensionFunctionCall;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    return-object p0
.end method

.method public getStreamingImplementation()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public rewrite(Lnet/sf/saxon/expr/StaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setDefinition(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ExtensionFunctionCall;->e:Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    return-void
.end method

.method public supplyStaticContext(Lnet/sf/saxon/expr/StaticContext;I[Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
