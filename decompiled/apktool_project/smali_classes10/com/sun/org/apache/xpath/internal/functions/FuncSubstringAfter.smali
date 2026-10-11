.class public Lcom/sun/org/apache/xpath/internal/functions/FuncSubstringAfter;
.super Lcom/sun/org/apache/xpath/internal/functions/Function2Args;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x70af152236aa8e42L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;-><init>()V

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

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->m_arg1:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->indexOf(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I

    move-result p1

    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->substring(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    :goto_0
    return-object p0
.end method
