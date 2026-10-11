.class public Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;
.super Lcom/sun/org/apache/xalan/internal/templates/AVTPart;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x3de66e588c8178bbL


# instance fields
.field private m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;Lcom/sun/org/apache/xpath/internal/XPathFactory;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;-><init>()V

    .line 4
    new-instance p3, Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p5}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    move-object v0, p3

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/Expression;->canTraverseOutsideSubtree()Z

    move-result p0

    return p0
.end method

.method public evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
