.class public interface abstract Lorg/w3c/dom/xpath/XPathEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createExpression(Ljava/lang/String;Lorg/w3c/dom/xpath/XPathNSResolver;)Lorg/w3c/dom/xpath/XPathExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createNSResolver(Lorg/w3c/dom/Node;)Lorg/w3c/dom/xpath/XPathNSResolver;
.end method

.method public abstract evaluate(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/xpath/XPathNSResolver;SLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
