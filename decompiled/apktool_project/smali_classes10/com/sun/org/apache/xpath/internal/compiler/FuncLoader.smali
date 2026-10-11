.class public Lcom/sun/org/apache/xpath/internal/compiler/FuncLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_funcID:I

.field private m_funcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/FuncLoader;->m_funcID:I

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/FuncLoader;->m_funcName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFunction()Lcom/sun/org/apache/xpath/internal/functions/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FuncLoader;->m_funcName:Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sun.org.apache.xpath.internal.functions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.org.apache.xalan.internal.templates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sun.org.apache.xpath.internal.functions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string v0, "Application can\'t install his own xpath function."

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/compiler/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/functions/Function;
    :try_end_0
    .catch Lcom/sun/org/apache/xpath/internal/compiler/ObjectFactory$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/ObjectFactory$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/FuncLoader;->m_funcName:Ljava/lang/String;

    return-object p0
.end method
