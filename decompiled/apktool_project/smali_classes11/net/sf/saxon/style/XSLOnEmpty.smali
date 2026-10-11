.class public final Lnet/sf/saxon/style/XSLOnEmpty;
.super Lnet/sf/saxon/style/XSLSequence;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSequence;-><init>()V

    return-void
.end method

.method public static synthetic Z(Lnet/sf/saxon/style/XSLOnEmpty;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/style/XSLOnEmpty;->a0(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic a0(Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/style/XSLFallback;

    if-nez v0, :cond_0

    instance-of p1, p1, Lnet/sf/saxon/style/XSLCatch;

    if-nez p1, :cond_0

    const-string p1, "xsl:on-empty must be the last instruction in the sequence constructor"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/XSLSequence;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLSequence;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/uqo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/uqo;-><init>(Lnet/sf/saxon/style/XSLOnEmpty;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method
