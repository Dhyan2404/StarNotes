.class public interface abstract Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContextNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getContextNodes()Lorg/w3c/dom/traversal/NodeIterator;
.end method

.method public abstract getErrorListener()Ljavax/xml/transform/ErrorListener;
.end method

.method public abstract getVariableOrParam(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract toNumber(Lorg/w3c/dom/Node;)D
.end method

.method public abstract toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
.end method
