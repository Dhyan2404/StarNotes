.class public abstract Lorg/apache/xerces/dom/NodeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/events/EventTarget;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final DOCUMENT_POSITION_IS_CONTAINED:S = 0x10s

.field public static final DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final ELEMENT_DEFINITION_NODE:S = 0x15s

.field protected static final FIRSTCHILD:S = 0x10s

.field protected static final HASSTRING:S = 0x80s

.field protected static final ID:S = 0x200s

.field protected static final IGNORABLEWS:S = 0x40s

.field protected static final NORMALIZED:S = 0x100s

.field protected static final OWNED:S = 0x8s

.field protected static final READONLY:S = 0x1s

.field protected static final SPECIFIED:S = 0x20s

.field protected static final SYNCCHILDREN:S = 0x4s

.field protected static final SYNCDATA:S = 0x2s

.field public static final TREE_POSITION_ANCESTOR:S = 0x4s

.field public static final TREE_POSITION_DESCENDANT:S = 0x8s

.field public static final TREE_POSITION_DISCONNECTED:S = 0x0s

.field public static final TREE_POSITION_EQUIVALENT:S = 0x10s

.field public static final TREE_POSITION_FOLLOWING:S = 0x2s

.field public static final TREE_POSITION_PRECEDING:S = 0x1s

.field public static final TREE_POSITION_SAME_NODE:S = 0x20s

.field static final serialVersionUID:J = -0x57a90af33c3441f0L


# instance fields
.field protected flags:S

.field protected ownerNode:Lorg/apache/xerces/dom/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->addEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/dom/NodeImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public changed()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->changed()V

    return-void
.end method

.method public changes()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->changes()I

    move-result p0

    return p0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {p1, v0}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "**Internal Error**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v3, 0x9

    if-eqz v1, :cond_2

    instance-of v4, v1, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "NOT_SUPPORTED_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v4

    if-ne v4, v3, :cond_3

    move-object v4, v0

    check-cast v4, Lorg/w3c/dom/Document;

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_4

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Document;

    goto :goto_2

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    :goto_2
    const/16 v5, 0x25

    const/16 v6, 0x23

    if-eq v4, v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    check-cast v3, Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v0

    check-cast v4, Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v1

    if-le v0, v1, :cond_5

    return v5

    :cond_5
    return v6

    :cond_6
    move-object v7, v0

    move-object v9, v7

    move v8, v2

    :goto_3
    const/16 v10, 0xa

    if-nez v7, :cond_2c

    move-object v7, v1

    move-object v12, v7

    move v11, v2

    :goto_4
    if-nez v7, :cond_2a

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v15, 0x22

    const/16 v16, 0x24

    const/4 v2, 0x6

    const/16 v18, 0x4

    const/16 v6, 0xc

    const/4 v5, 0x2

    if-eq v7, v5, :cond_12

    if-eq v7, v2, :cond_a

    if-eq v7, v10, :cond_7

    if-eq v7, v6, :cond_a

    goto :goto_5

    :cond_7
    if-ne v1, v4, :cond_8

    return v10

    :cond_8
    if-eqz v4, :cond_9

    if-ne v4, v3, :cond_9

    return v18

    :cond_9
    :goto_5
    move v7, v8

    move-object v8, v0

    goto/16 :goto_8

    :cond_a
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v13

    if-ne v13, v12, :cond_b

    return v10

    :cond_b
    if-eq v14, v2, :cond_c

    if-eq v14, v6, :cond_c

    move-object v9, v4

    move v7, v8

    move-object v8, v9

    goto :goto_8

    :cond_c
    if-eq v7, v14, :cond_e

    if-le v7, v14, :cond_d

    move/from16 v18, v5

    :cond_d
    return v18

    :cond_e
    if-ne v7, v6, :cond_10

    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v12, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v15

    :cond_f
    return v16

    :cond_10
    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v12, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v15

    :cond_11
    return v16

    :cond_12
    move-object v7, v9

    check-cast v7, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v13

    if-ne v14, v5, :cond_15

    move-object v7, v12

    check-cast v7, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v7

    if-ne v7, v13, :cond_14

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v15

    :cond_13
    return v16

    :cond_14
    move-object v15, v7

    goto :goto_6

    :cond_15
    move-object v15, v1

    :goto_6
    move-object v1, v13

    const/4 v8, 0x0

    :goto_7
    if-nez v1, :cond_28

    move v7, v8

    move-object v8, v13

    move-object v1, v15

    :goto_8
    if-eq v14, v5, :cond_1b

    if-eq v14, v2, :cond_16

    if-eq v14, v10, :cond_17

    if-eq v14, v6, :cond_16

    goto :goto_9

    :cond_16
    const/16 v2, 0x14

    goto :goto_a

    :cond_17
    if-ne v8, v3, :cond_18

    const/16 v2, 0x14

    return v2

    :cond_18
    if-eqz v3, :cond_19

    if-ne v4, v3, :cond_19

    return v5

    :cond_19
    :goto_9
    move v2, v11

    move-object v4, v12

    goto :goto_c

    :goto_a
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-ne v1, v0, :cond_1a

    return v2

    :cond_1a
    move-object v1, v4

    move v2, v11

    goto :goto_c

    :cond_1b
    move-object v0, v12

    check-cast v0, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v16

    move-object v4, v12

    move-object/from16 v0, v16

    const/4 v11, 0x0

    :goto_b
    if-nez v0, :cond_26

    move v2, v11

    move-object/from16 v1, v16

    :goto_c
    if-eq v9, v4, :cond_1d

    check-cast v9, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v0

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v1

    if-le v0, v1, :cond_1c

    const/16 v17, 0x25

    return v17

    :cond_1c
    const/16 v19, 0x23

    return v19

    :cond_1d
    const/4 v0, 0x0

    if-le v7, v2, :cond_1f

    :goto_d
    sub-int v3, v7, v2

    if-lt v0, v3, :cond_1e

    if-ne v8, v1, :cond_20

    return v5

    :cond_1e
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    :goto_e
    sub-int v3, v2, v7

    if-lt v0, v3, :cond_25

    if-ne v1, v8, :cond_20

    return v18

    :cond_20
    :goto_f
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object/from16 v22, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, v22

    if-ne v8, v1, :cond_24

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_10
    const/16 v20, 0x0

    if-nez v1, :cond_21

    return v20

    :cond_21
    if-ne v1, v0, :cond_22

    return v5

    :cond_22
    if-ne v1, v2, :cond_23

    return v18

    :cond_23
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_10

    :cond_24
    const/16 v20, 0x0

    goto :goto_f

    :cond_25
    const/16 v20, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_26
    const/16 v17, 0x25

    const/16 v19, 0x23

    const/16 v20, 0x0

    add-int/lit8 v11, v11, 0x1

    if-ne v0, v8, :cond_27

    const/16 v1, 0x14

    return v1

    :cond_27
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_b

    :cond_28
    const/16 v17, 0x25

    const/16 v19, 0x23

    const/16 v20, 0x0

    add-int/lit8 v8, v8, 0x1

    if-ne v1, v15, :cond_29

    return v10

    :cond_29
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v9, v1

    move-object v1, v7

    goto/16 :goto_7

    :cond_2a
    move/from16 v20, v2

    move/from16 v17, v5

    move/from16 v19, v6

    add-int/lit8 v11, v11, 0x1

    if-ne v7, v0, :cond_2b

    const/16 v2, 0x14

    return v2

    :cond_2b
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v12, v7

    move/from16 v5, v17

    move/from16 v6, v19

    move-object v7, v2

    move/from16 v2, v20

    goto/16 :goto_4

    :cond_2c
    move/from16 v20, v2

    move/from16 v17, v5

    move/from16 v19, v6

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v1, :cond_2d

    return v10

    :cond_2d
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v9, v7

    move/from16 v5, v17

    move/from16 v6, v19

    move-object v7, v2

    move/from16 v2, v20

    goto/16 :goto_3
.end method

.method public compareTreePosition(Lorg/w3c/dom/Node;)S
    .locals 12

    if-ne p0, p1, :cond_0

    const/16 p0, 0x30

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_17

    const/16 v4, 0xc

    if-eq v0, v4, :cond_17

    if-eq v1, v2, :cond_17

    if-ne v1, v4, :cond_1

    goto/16 :goto_9

    :cond_1
    move-object v0, p0

    move-object v2, v0

    move v1, v3

    :goto_0
    if-nez v0, :cond_15

    move-object v0, p1

    move-object v5, v0

    move v4, v3

    :goto_1
    if-nez v0, :cond_13

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    move-object p0, v2

    check-cast p0, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    :cond_2
    move-object v8, p0

    if-ne v6, v7, :cond_3

    move-object p0, v5

    check-cast p0, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p1

    :cond_3
    if-ne v0, v7, :cond_4

    if-ne v6, v7, :cond_4

    if-ne v8, p1, :cond_4

    const/16 p0, 0x10

    return p0

    :cond_4
    const/4 v9, 0x1

    if-ne v0, v7, :cond_7

    move v1, v3

    move-object p0, v8

    :goto_2
    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    if-ne p0, p1, :cond_6

    return v9

    :cond_6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_2

    :cond_7
    :goto_3
    move v10, v1

    if-ne v6, v7, :cond_a

    move-object p0, p1

    move v4, v3

    :goto_4
    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    if-ne p0, v8, :cond_9

    return v7

    :cond_9
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v5, p0

    move-object p0, v0

    goto :goto_4

    :cond_a
    :goto_5
    move-object p0, v5

    move v5, v4

    if-eq v2, p0, :cond_b

    return v3

    :cond_b
    move p0, v3

    if-le v10, v5, :cond_d

    :goto_6
    sub-int v0, v10, v5

    if-lt p0, v0, :cond_c

    if-ne v8, p1, :cond_e

    return v9

    :cond_c
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    sub-int v0, v5, v10

    if-lt p0, v0, :cond_12

    if-ne p1, v8, :cond_e

    return v7

    :cond_e
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v11, v8

    move-object v8, p0

    move-object p0, p1

    move-object p1, v0

    move-object v0, v11

    if-ne v8, p1, :cond_e

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_8
    if-nez p1, :cond_f

    return v3

    :cond_f
    if-ne p1, p0, :cond_10

    return v9

    :cond_10
    if-ne p1, v0, :cond_11

    return v7

    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_8

    :cond_12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v4, v4, 0x1

    if-ne v0, p0, :cond_14

    const/16 p0, 0xa

    return p0

    :cond_14
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    if-ne v0, p1, :cond_16

    const/4 p0, 0x5

    return p0

    :cond_16
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_0

    :cond_17
    :goto_9
    return v3
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result p0

    return p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public getContainer()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeNumber()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly()Z

    move-result p0

    return p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lorg/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUserDataRecord()Ljava/util/Hashtable;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserDataRecord(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final hasStringValue(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 p1, p1, 0x80

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 p1, p1, -0x81

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final hasStringValue()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "HIERARCHY_REQUEST_ERR"

    const/4 p2, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p1, p2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method final internalIsIgnorableWhitespace()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p0}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return v2

    :pswitch_0
    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :pswitch_1
    return v2

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, p0

    check-cast v3, Lorg/apache/xerces/dom/ElementImpl;

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v5, "xmlns"

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_7

    if-ne v0, p0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    return v1

    :cond_7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    invoke-virtual {p0, p0}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    return v2

    :cond_a
    :goto_1
    if-nez p1, :cond_c

    if-ne v0, p1, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    return v1

    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    return v3

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    return v3

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    return v3

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method final isFirstChild(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x11

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isFirstChild()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isIdAttribute(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 p1, p1, 0x200

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 p1, p1, -0x201

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isIdAttribute()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isIgnorableWhitespace(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x40

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x41

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isNormalized(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 p1, p1, 0x100

    goto :goto_0

    :cond_1
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 p1, p1, -0x101

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isNormalized()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isOwned(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x9

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isOwned()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isReadOnly(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x2

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isReadOnly()Z
    .locals 1

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isSpecified(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x21

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final isSpecified()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public lookupNamespacePrefix(Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v4, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0, p0}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p0}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2

    :pswitch_0
    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_1
    return-object v2

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    if-ne v1, p1, :cond_5

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v6, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    if-nez p1, :cond_9

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    move-object v2, v6

    :cond_8
    return-object v2

    :cond_9
    if-eqz v5, :cond_b

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a

    move-object v2, v6

    :cond_a
    return-object v2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    :goto_1
    invoke-virtual {p0, p0}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p0}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :pswitch_0
    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_1
    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final needsSyncChildren(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x5

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final needsSyncChildren()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final needsSyncData(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p1, p1, -0x3

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void
.end method

.method final needsSyncData()Z
    .locals 0

    .line 2
    iget-short p0, p0, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/apache/xerces/dom/CoreDocumentImpl;

    return-object p0
.end method

.method public parentNode()Lorg/apache/xerces/dom/NodeImpl;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public previousSibling()Lorg/apache/xerces/dom/ChildNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "NOT_FOUND_ERR"

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "HIERARCHY_REQUEST_ERR"

    const/4 p2, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p1, p2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    :cond_1
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "NAMESPACE_ERR"

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setReadOnly(ZZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public synchronizeData()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
