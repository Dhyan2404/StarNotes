.class public Lcom/sun/org/apache/xpath/internal/operations/Bool;
.super Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x9ed34d4f9cfd0bL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    :goto_0
    return-object p0
.end method
