.class public interface abstract Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADAPTIVE_RTF:I = 0x1

.field public static final FIRST_TYPE:I = 0x0

.field public static final NO_TYPE:I = -0x1

.field public static final NULL:I = 0x0

.field public static final RETURN_CURRENT:I = 0x0

.field public static final RETURN_PARENT:I = 0x1

.field public static final SIMPLE_RTF:I = 0x0

.field public static final TREE_RTF:I = 0x2


# virtual methods
.method public abstract characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract getAttributeNode(II)I
.end method

.method public abstract getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getDocument()I
.end method

.method public abstract getDocumentURI(I)Ljava/lang/String;
.end method

.method public abstract getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
.end method

.method public abstract getExpandedTypeID(I)I
.end method

.method public abstract getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getLanguage(I)Ljava/lang/String;
.end method

.method public abstract getNSType(I)I
.end method

.method public abstract getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getNamespaceName(I)Ljava/lang/String;
.end method

.method public abstract getNamespaceType(I)I
.end method

.method public abstract getNodeHandle(I)I
.end method

.method public abstract getNodeIdent(I)I
.end method

.method public abstract getNodeName(I)Ljava/lang/String;
.end method

.method public abstract getNodeNameX(I)Ljava/lang/String;
.end method

.method public abstract getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
.end method

.method public abstract getParent(I)I
.end method

.method public abstract getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
.end method

.method public abstract getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
.end method

.method public abstract getSize()I
.end method

.method public abstract getStringValue()Ljava/lang/String;
.end method

.method public abstract getStringValueX(I)Ljava/lang/String;
.end method

.method public abstract getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isAttribute(I)Z
.end method

.method public abstract isElement(I)Z
.end method

.method public abstract lessThan(II)Z
.end method

.method public abstract lookupNamespace(ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract makeNode(I)Lorg/w3c/dom/Node;
.end method

.method public abstract makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;
.end method

.method public abstract makeNodeList(I)Lorg/w3c/dom/NodeList;
.end method

.method public abstract makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;
.end method

.method public abstract orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V
.end method

.method public abstract setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end method

.method public abstract shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method
