.class public abstract Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected m_namespaceUri:Ljava/lang/String;

.field protected m_scriptLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->m_namespaceUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->m_scriptLang:Ljava/lang/String;

    return-void
.end method

.method public static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.sun.org.apache.xalan.internal.xslt.extensions.Redirect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.sun.org.apache.xalan.internal.lib.Redirect"

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/extensions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract callFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract isElementAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isFunctionAvailable(Ljava/lang/String;)Z
.end method

.method public abstract processElement(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
