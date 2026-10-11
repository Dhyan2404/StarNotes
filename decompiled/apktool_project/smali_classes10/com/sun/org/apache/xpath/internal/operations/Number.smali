.class public Lcom/sun/org/apache/xpath/internal/operations/Number;
.super Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x63e0b7f89837d0b5L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D

    move-result-wide p0

    return-wide p0
.end method

.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object p0
.end method
