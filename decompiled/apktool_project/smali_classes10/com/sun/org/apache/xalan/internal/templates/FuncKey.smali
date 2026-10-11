.class public Lcom/sun/org/apache/xalan/internal/templates/FuncKey;
.super Lcom/sun/org/apache/xpath/internal/functions/Function2Args;
.source "SourceFile"


# static fields
.field private static ISTRUE:Ljava/lang/Boolean; = null

.field static final serialVersionUID:J = 0x7e23a7eadbc8c78cL


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocumentRoot(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->getArg0()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->getArg1()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-ne v6, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getKeyManager()Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;

    move-result-object v0

    if-eqz v3, :cond_1

    move-object v6, v2

    check-cast v6, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getLength()I

    move-result v6

    if-gt v6, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v2

    new-instance v10, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;

    invoke-direct {v10}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;-><init>()V

    invoke-virtual {v10, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    const/4 p0, 0x0

    :goto_2
    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_5

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :cond_3
    invoke-virtual {p0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/sun/org/apache/xalan/internal/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    move v5, v1

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->getNodeSetDTMByKey(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    invoke-virtual {v10, v3}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->addIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p0

    invoke-virtual {v10, p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->setRoot(ILjava/lang/Object;)V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {p0, v10}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    move v5, v1

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->getNodeSetDTMByKey(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    :goto_3
    return-object p0
.end method
