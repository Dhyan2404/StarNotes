.class public Lcom/sun/org/apache/xpath/internal/functions/FuncQname;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x1543d9e4efa7b6a4L


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

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;->getArg0AsNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    :goto_0
    return-object p0
.end method
