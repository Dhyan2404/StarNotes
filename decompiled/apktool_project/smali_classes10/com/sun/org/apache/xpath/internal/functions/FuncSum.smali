.class public Lcom/sun/org/apache/xpath/internal/functions/FuncSum;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x25bc00e53bbcd00fL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 4
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

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p1

    const/4 v2, -0x1

    if-eq v2, p1, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->toDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object p0
.end method
