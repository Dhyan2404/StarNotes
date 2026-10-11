.class public Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;
.super Lcom/sun/org/apache/xpath/internal/functions/Function2Args;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x227678209ab58610L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->reportWrongNumberArgs()V

    :cond_1
    return-void
.end method

.method public error(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocumentRoot(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionOneArg;->getArg0()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function2Args;->getArg1()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v8

    if-ne v4, v8, :cond_1

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v7

    if-ne v7, v6, :cond_0

    const-string v0, "WG_EMPTY_SECOND_ARG"

    invoke-virtual {p0, p1, v0, v5}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    return-object p0

    :cond_0
    invoke-virtual {p1, v7}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const-string v7, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const-string v8, "Namespace context can not be null!"

    invoke-virtual {p0, v7, v8}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-instance v8, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-virtual {v8}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->mutableNodeset()Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v10

    if-ne v4, v10, :cond_4

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    move v10, v6

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v10

    if-eq v6, v10, :cond_d

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p1, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v11

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v11

    :goto_4
    if-nez v3, :cond_8

    if-eq v6, v10, :cond_8

    invoke-virtual {p1, v10}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v7

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    :cond_8
    if-nez v11, :cond_9

    goto :goto_3

    :cond_9
    if-ne v6, v1, :cond_a

    const-string v12, "ER_NO_CONTEXT_OWNERDOC"

    invoke-virtual {p0, p1, v12, v5}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->error(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const/16 v12, 0x3a

    invoke-interface {v11, v12}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->indexOf(I)I

    move-result v12

    const/16 v13, 0x2f

    invoke-interface {v11, v13}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->indexOf(I)I

    move-result v13

    if-eq v12, v6, :cond_b

    if-eq v13, v6, :cond_b

    if-ge v12, v13, :cond_b

    move-object v7, v5

    :cond_b
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, p1, v0, v11, v7}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->getDoc(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eq v6, v11, :cond_c

    invoke-virtual {v9, v11}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->contains(I)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v9, v11}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addElement(I)V

    :cond_c
    if-eqz v4, :cond_d

    if-ne v11, v6, :cond_5

    :cond_d
    return-object v8
.end method

.method public getDoc(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;Ljava/lang/String;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSourceTreeManager()Lcom/sun/org/apache/xpath/internal/SourceTreeManager;

    move-result-object v0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v0, v3, v5, v4}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, -0x1

    if-eq v7, v6, :cond_0

    return v6

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v4

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    :goto_0
    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Lcom/sun/org/apache/xpath/internal/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result v6

    goto :goto_2

    :cond_2
    const-string v0, "WG_CANNOT_MAKE_URL_FROM"

    new-array v5, v10, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_3

    move-object v13, v8

    goto :goto_1

    :cond_3
    move-object v13, v3

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v9

    invoke-virtual {v1, v2, v0, v5}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_3
    instance-of v5, v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_3

    :cond_4
    instance-of v5, v0, Ljava/lang/NullPointerException;

    if-nez v5, :cond_f

    instance-of v5, v0, Ljava/lang/ClassCastException;

    if-nez v5, :cond_f

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    instance-of v5, v0, Ljavax/xml/transform/TransformerException;

    const-string v12, "): "

    const-string v13, " ("

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Ljavax/xml/transform/TransformerException;

    :cond_5
    :goto_4
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    instance-of v14, v5, Ljavax/xml/transform/TransformerException;

    if-eqz v14, :cond_8

    check-cast v5, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   ID: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Line #"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Column #"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v11, v5, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v11, :cond_5

    check-cast v5, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v5

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    move v6, v7

    :goto_5
    if-ne v7, v6, :cond_e

    const-string v0, "WG_CANNOT_LOAD_REQUESTED_DOC"

    if-eqz v11, :cond_b

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    new-array v5, v10, [Ljava/lang/Object;

    if-nez v4, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_c

    move-object v3, v8

    :cond_c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d
    aput-object v4, v5, v9

    invoke-virtual {v1, v2, v0, v5}, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;->warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_6
    return v6

    :cond_f
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isNodesetExpr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reportWrongNumberArgs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;

    const-string v0, "ER_ONE_OR_TWO"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
