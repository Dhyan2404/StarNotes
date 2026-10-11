.class public Lcom/sun/org/apache/xpath/internal/functions/FuncLang;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x6d3341a25189a979L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "lang"

    invoke-interface {p1, v0, v3, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2d

    if-ne p0, p1, :cond_2

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    :goto_2
    return-object p0
.end method
