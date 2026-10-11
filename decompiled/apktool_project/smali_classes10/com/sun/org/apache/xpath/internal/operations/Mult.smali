.class public Lcom/sun/org/apache/xpath/internal/operations/Mult;
.super Lcom/sun/org/apache/xpath/internal/operations/Operation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x44c9fc2fc5fecf13L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p1

    mul-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object p0
.end method
