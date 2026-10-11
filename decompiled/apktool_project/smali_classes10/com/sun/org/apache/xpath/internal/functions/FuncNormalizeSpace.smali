.class public Lcom/sun/org/apache/xpath/internal/functions/FuncNormalizeSpace;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x2ee0e9e0c01181a0L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;->getArg0AsString(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method

.method public executeCharsToContentHandler(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;->Arg0IsNodesetExpr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;->getArg0AsNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p0, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncNormalizeSpace;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    :cond_1
    :goto_0
    return-void
.end method
