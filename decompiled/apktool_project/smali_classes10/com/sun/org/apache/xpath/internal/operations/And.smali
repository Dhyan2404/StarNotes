.class public Lcom/sun/org/apache/xpath/internal/operations/And;
.super Lcom/sun/org/apache/xpath/internal/operations/Operation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x571d62061d42386L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_left:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/operations/Operation;->m_right:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    return-object p0
.end method
