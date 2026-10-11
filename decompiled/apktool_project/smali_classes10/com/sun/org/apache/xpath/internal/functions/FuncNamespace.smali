.class public Lcom/sun/org/apache/xpath/internal/functions/FuncNamespace;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x412a6323c251fb55L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;->getArg0AsNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_3
    :goto_2
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    :cond_4
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    :cond_5
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method
