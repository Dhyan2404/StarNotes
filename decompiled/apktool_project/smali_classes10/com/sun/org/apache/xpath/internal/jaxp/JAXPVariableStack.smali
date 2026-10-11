.class public Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;
.super Lcom/sun/org/apache/xpath/internal/VariableStack;
.source "SourceFile"


# instance fields
.field private final resolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/VariableStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method


# virtual methods
.method public getVariableOrParam(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_1

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-interface {p0, v0}, Ljavax/xml/xpath/XPathVariableResolver;->resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_RESOLVE_VARIABLE_RETURNS_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "Variable qname"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
