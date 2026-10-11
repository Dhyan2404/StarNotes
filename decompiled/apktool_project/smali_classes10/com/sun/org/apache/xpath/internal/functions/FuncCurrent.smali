.class public Lcom/sun/org/apache/xpath/internal/functions/FuncCurrent;
.super Lcom/sun/org/apache/xpath/internal/functions/Function;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x4f50e25a5d8e8640L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function;-><init>()V

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

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNodeList()Lcom/sun/org/apache/xpath/internal/axes/SubContextList;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getLocPathIterator()Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getCurrentContextNode()I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PROCESSOR_ERROR"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNode()I

    move-result p0

    :goto_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method
