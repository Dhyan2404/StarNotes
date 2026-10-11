.class Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl$DummyPrefixResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DummyPrefixResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl$DummyPrefixResolver;->this$0:Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseIdentifier()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl$DummyPrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    const-string p0, "ER_NULL_RESOLVER"

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public handlesNullPrefixes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
