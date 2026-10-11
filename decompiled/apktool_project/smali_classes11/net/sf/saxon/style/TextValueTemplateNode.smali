.class public Lnet/sf/saxon/style/TextValueTemplateNode;
.super Lnet/sf/saxon/tree/linked/TextImpl;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z


# instance fields
.field public i:Lnet/sf/saxon/expr/Expression;

.field public j:Lnet/sf/saxon/style/TextValueTemplateContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/linked/TextImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-void
.end method


# virtual methods
.method public getContentExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getStaticContext()Lnet/sf/saxon/style/TextValueTemplateContext;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->j:Lnet/sf/saxon/style/TextValueTemplateContext;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/style/TextValueTemplateContext;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/style/TextValueTemplateContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/style/TextValueTemplateNode;)V

    iput-object v0, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->j:Lnet/sf/saxon/style/TextValueTemplateContext;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->j:Lnet/sf/saxon/style/TextValueTemplateContext;

    return-object p0
.end method

.method public parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, ""

    const-string v3, "disable-output-escaping"

    invoke-interface {v0, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/style/StyleElement;->isYes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/TextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/TextValueTemplateNode;->getStaticContext()Lnet/sf/saxon/style/TextValueTemplateContext;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/sf/saxon/style/AttributeValueTemplate;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;

    :goto_1
    new-instance v1, Lnet/sf/saxon/expr/instruct/ValueOf;

    iget-object v3, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v1, v3, v0, v2}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    iput-object v1, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    const-string v1, "tvt"

    iget-object v2, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/TextValueTemplateNode;->i:Lnet/sf/saxon/expr/Expression;

    return-void
.end method
