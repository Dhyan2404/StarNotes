.class public Lcom/sun/org/apache/xpath/internal/functions/FuncCount;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x62c1e906877afb17L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getLength()I

    move-result p1

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    int-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object p0
.end method
