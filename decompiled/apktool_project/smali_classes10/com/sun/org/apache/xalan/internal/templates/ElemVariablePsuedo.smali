.class public Lcom/sun/org/apache/xalan/internal/templates/ElemVariablePsuedo;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x99b8743bcdbe1c6L


# instance fields
.field m_lazyVar:Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariableSimple;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object p1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->m_index:I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariablePsuedo;->m_lazyVar:Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariableSimple;

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V

    return-void
.end method

.method public setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariableSimple;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariableSimple;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariablePsuedo;->m_lazyVar:Lcom/sun/org/apache/xalan/internal/templates/XUnresolvedVariableSimple;

    return-void
.end method
