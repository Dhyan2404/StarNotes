.class public Lcom/sun/org/apache/xpath/internal/operations/VariableSafeAbsRef;
.super Lcom/sun/org/apache/xpath/internal/operations/Variable;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x7f52f278a11a31dcL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getRoot()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p2

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result p2

    if-eq v1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    :cond_0
    return-object p0
.end method
