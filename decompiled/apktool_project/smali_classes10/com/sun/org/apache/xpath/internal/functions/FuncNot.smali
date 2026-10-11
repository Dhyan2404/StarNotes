.class public Lcom/sun/org/apache/xpath/internal/functions/FuncNot;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x654dbe706ae32d3eL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->m_arg0:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    :goto_0
    return-object p0
.end method
