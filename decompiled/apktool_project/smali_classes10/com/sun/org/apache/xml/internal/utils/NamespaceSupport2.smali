.class public Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;
.super Lorg/xml/sax/helpers/NamespaceSupport;
.source "SourceFile"


# static fields
.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->reset()V

    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/Context2;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/Context2;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/Context2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/PrefixForUriEnumerator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/org/apache/xml/internal/utils/PrefixForUriEnumerator;-><init>(Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/Context2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public popContext()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/Context2;->getParent()Lcom/sun/org/apache/xml/internal/utils/Context2;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    return-void

    :cond_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/utils/Context2;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x3

    const/4 p3, 0x0

    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public pushContext()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/Context2;->getChild()Lcom/sun/org/apache/xml/internal/utils/Context2;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/Context2;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/Context2;-><init>(Lcom/sun/org/apache/xml/internal/utils/Context2;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/Context2;->setParent(Lcom/sun/org/apache/xml/internal/utils/Context2;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/Context2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/Context2;-><init>(Lcom/sun/org/apache/xml/internal/utils/Context2;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;->currentContext:Lcom/sun/org/apache/xml/internal/utils/Context2;

    const-string p0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
