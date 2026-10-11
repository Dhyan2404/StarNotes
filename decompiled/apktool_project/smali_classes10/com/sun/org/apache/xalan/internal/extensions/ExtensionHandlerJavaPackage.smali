.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaPackage;
.super Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callFunction(Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getMethodKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaPackage;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    const-string v3, "."

    .line 1
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 2
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-object v9, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_0
    move-object v9, v8

    :goto_0
    const-string v4, ".new"

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_6

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v11, v4, [Ljava/lang/Object;

    new-array v6, v6, [[Ljava/lang/Object;

    move v12, v10

    :goto_1
    if-ge v12, v4, :cond_1

    .line 5
    invoke-virtual {v1, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    .line 6
    invoke-virtual {p0, v7, v8, v11}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_3

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 8
    invoke-static {v11, v6, v4, v5}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    aget-object v4, v6, v10

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :catch_2
    move-exception v0

    .line 10
    :try_start_2
    throw v0

    .line 11
    :catch_3
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 12
    :try_start_3
    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 13
    :try_start_4
    invoke-static {v1, v11, v6, v5}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getConstructor(Ljava/lang/Class;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v7, :cond_4

    .line 14
    invoke-virtual {p0, v7, v8, v11, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v9, :cond_5

    .line 15
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    aget-object v3, v6, v10

    invoke-direct {v2, v9, v1, v3}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    aget-object v0, v6, v10

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :try_start_6
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    aget-object v4, v6, v10

    invoke-direct {v3, v9, v1, v4}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 19
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 20
    :goto_3
    :try_start_8
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    aget-object v4, v6, v10

    invoke-direct {v3, v9, v1, v4}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    .line 21
    throw v0

    :cond_5
    aget-object v0, v6, v10

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 23
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    const/4 v4, -0x1

    if-eq v4, v3, :cond_c

    .line 24
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v11, v4, [Ljava/lang/Object;

    new-array v12, v6, [[Ljava/lang/Object;

    move v13, v10

    :goto_4
    if-ge v13, v4, :cond_7

    .line 25
    invoke-virtual {v1, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    if-eqz v7, :cond_8

    .line 26
    invoke-virtual {p0, v7, v8, v11}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_5

    :cond_8
    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v4
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-nez v4, :cond_9

    .line 28
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 29
    invoke-static {v11, v12, v4, v5}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    aget-object v4, v12, v10

    .line 30
    invoke-virtual {v1, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    return-object v0

    :catch_6
    move-exception v0

    .line 31
    :try_start_a
    throw v0

    .line 32
    :catch_7
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v3, v6

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 34
    :try_start_b
    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v6, 0x1

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    .line 35
    :try_start_c
    invoke-static/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;I)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v7, :cond_a

    .line 36
    invoke-virtual {p0, v7, v8, v11, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v9, :cond_b

    .line 37
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    aget-object v2, v12, v10

    invoke-virtual {v0, v1, v8, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    aget-object v0, v12, v10

    .line 39
    invoke-virtual {v1, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 40
    :try_start_e
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    aget-object v3, v12, v10

    invoke-virtual {v2, v1, v8, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    .line 41
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 42
    :goto_6
    :try_start_10
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    aget-object v3, v12, v10

    invoke-virtual {v2, v1, v8, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    throw v0

    :cond_b
    aget-object v0, v12, v10

    .line 44
    invoke-virtual {v1, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 45
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, v6, :cond_13

    .line 47
    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 48
    instance-of v4, v3, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v4, :cond_d

    .line 49
    check-cast v3, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v3

    :cond_d
    move-object v11, v3

    .line 50
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v6

    new-array v12, v3, [Ljava/lang/Object;

    new-array v13, v6, [[Ljava/lang/Object;

    move v4, v10

    :goto_7
    if-ge v4, v3, :cond_e

    add-int/lit8 v6, v4, 0x1

    .line 51
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v4

    move v4, v6

    goto :goto_7

    :cond_e
    if-eqz v7, :cond_f

    .line 52
    invoke-virtual {p0, v7, v11, v12}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :cond_f
    if-eqz v8, :cond_10

    .line 53
    :try_start_11
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 54
    invoke-static {v12, v13, v1, v5}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    aget-object v1, v13, v10

    .line 55
    invoke-virtual {v8, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    return-object v0

    :catch_a
    move-exception v0

    .line 56
    :try_start_12
    throw v0

    .line 57
    :catch_b
    :cond_10
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x2

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, p4

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;I)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v7, :cond_11

    .line 59
    invoke-virtual {p0, v7, v11, v12, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz v9, :cond_12

    .line 60
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 61
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    aget-object v2, v13, v10

    invoke-virtual {v0, v1, v11, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    aget-object v0, v13, v10

    .line 62
    invoke-virtual {v1, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 63
    :try_start_14
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    aget-object v3, v13, v10

    invoke-virtual {v2, v1, v11, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    .line 64
    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 65
    :goto_8
    :try_start_16
    invoke-virtual {v9}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    aget-object v3, v13, v10

    invoke-virtual {v2, v1, v11, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 66
    throw v0

    :cond_12
    aget-object v0, v13, v10

    .line 67
    invoke-virtual {v1, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_INSTANCE_MTHD_CALL_REQUIRES"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 69
    :goto_9
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :goto_a
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 71
    instance-of v2, v1, Ljavax/xml/transform/TransformerException;

    if-nez v2, :cond_15

    if-eqz v1, :cond_14

    move-object v0, v1

    .line 72
    :cond_14
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :cond_15
    check-cast v1, Ljavax/xml/transform/TransformerException;

    throw v1
.end method

.method public isElementAvailable(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move p1, v0

    :goto_0
    if-ge p1, v2, :cond_1

    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v0

    const-class v6, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v4, v4, v3

    const-class v5, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public isFunctionAvailable(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move p1, v0

    :goto_0
    if-ge p1, v2, :cond_1

    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public processElement(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p5, v0, v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->m_className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    :try_start_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getElementMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_0

    invoke-virtual {p0, p5, v0, v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_ELEMENT_NAME_METHOD_STATIC"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_INVALID_ELEMENT_NAME"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;

    invoke-direct {p0, p3, p4}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    :try_start_4
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, v1, v0, p5}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p3

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v1, v0, p2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p3

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v1, v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p0, p4, p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->outputToResultTree(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catch_3
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljavax/xml/transform/TransformerException;

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    move-object p0, p1

    :cond_5
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    check-cast p1, Ljavax/xml/transform/TransformerException;

    throw p1
.end method
