.class public interface abstract Lcom/sun/org/apache/xalan/internal/transformer/TransformState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;


# virtual methods
.method public abstract getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
.end method

.method public abstract getCurrentElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.end method

.method public abstract getCurrentNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getCurrentTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
.end method

.method public abstract getMatchedNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getMatchedTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
.end method

.method public abstract getTransformer()Ljavax/xml/transform/Transformer;
.end method
