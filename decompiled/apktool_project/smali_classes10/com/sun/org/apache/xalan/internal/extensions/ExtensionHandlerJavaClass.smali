.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;
.super Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;
.source "SourceFile"


# instance fields
.field private m_classObj:Ljava/lang/Class;

.field private m_defaultInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    :try_start_0
    invoke-static {p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    .line 83
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;->getMethodKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 1
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-object v10, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_0
    move-object v10, v9

    :goto_0
    const-string v3, "new"

    move-object/from16 v4, p1

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_6

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    new-array v5, v5, [[Ljava/lang/Object;

    move v6, v11

    :goto_1
    if-ge v6, v3, :cond_1

    .line 4
    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1, v2, v9, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    goto :goto_2

    :cond_2
    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-static {v4, v5, v3, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    aget-object v3, v5, v11

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-static {v0, v4, v5, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getConstructor(Ljava/lang/Class;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v1, v2, v9, v4, v3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v10, :cond_5

    .line 13
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    aget-object v2, v5, v11

    invoke-direct {v1, v10, v3, v2}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    aget-object v0, v5, v11

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    aget-object v4, v5, v11

    invoke-direct {v2, v10, v3, v4}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 17
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :goto_3
    :try_start_6
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    aget-object v4, v5, v11

    invoke-direct {v2, v10, v3, v4}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    .line 19
    throw v0

    :cond_5
    aget-object v0, v5, v11

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 21
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v12, v3, [Ljava/lang/Object;

    new-array v13, v5, [[Ljava/lang/Object;

    move v5, v11

    :goto_4
    if-ge v5, v3, :cond_7

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    .line 23
    invoke-virtual {v1, v2, v9, v12}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->getFromCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    goto :goto_5

    :cond_8
    move-object v5, v9

    :goto_5
    if-eqz v5, :cond_d

    .line 24
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v6, :cond_d

    .line 25
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 26
    invoke-static {v12, v13, v6, v7}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->convertParams([Ljava/lang/Object;[[Ljava/lang/Object;[Ljava/lang/Class;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 27
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_9

    aget-object v3, v13, v11

    .line 28
    invoke-virtual {v5, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    aget-object v8, v13, v11

    .line 29
    array-length v8, v8

    .line 30
    const-class v14, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    aget-object v6, v6, v11

    invoke-virtual {v14, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v8, v8, -0x1

    :cond_a
    if-gt v3, v8, :cond_b

    .line 31
    iget-object v3, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    aget-object v6, v13, v11

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 32
    :cond_b
    aget-object v3, v12, v11

    .line 33
    instance-of v6, v3, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v6, :cond_c

    .line 34
    check-cast v3, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v3

    :cond_c
    aget-object v6, v13, v11

    .line 35
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    return-object v0

    :catch_5
    move-exception v0

    .line 36
    :try_start_8
    throw v0

    .line 37
    :catch_6
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v14, 0x4

    const/4 v3, 0x3

    if-lez v0, :cond_10

    .line 38
    aget-object v0, v12, v11

    .line 39
    instance-of v5, v0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    if-eqz v5, :cond_e

    .line 40
    check-cast v0, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v0

    .line 41
    :cond_e
    iget-object v5, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v15, v0

    move v0, v14

    goto :goto_6

    :cond_f
    move-object v15, v0

    move v0, v3

    goto :goto_6

    :cond_10
    move v0, v3

    move-object v15, v9

    .line 42
    :goto_6
    iget-object v3, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    move-object/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, p4

    move v8, v0

    invoke-static/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;I)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v2, :cond_11

    .line 43
    invoke-virtual {v1, v2, v9, v12, v3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-ne v14, v0, :cond_13

    if-eqz v10, :cond_12

    .line 44
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    aget-object v1, v13, v11

    invoke-virtual {v0, v3, v15, v1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    aget-object v0, v13, v11

    .line 46
    invoke-virtual {v3, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 47
    :try_start_a
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    aget-object v2, v13, v11

    invoke-virtual {v1, v3, v15, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    .line 48
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 49
    :goto_7
    :try_start_c
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    aget-object v2, v13, v11

    invoke-virtual {v1, v3, v15, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 50
    throw v0

    :cond_12
    aget-object v0, v13, v11

    .line 51
    invoke-virtual {v3, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 52
    :cond_13
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v10, :cond_14

    .line 53
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    aget-object v1, v13, v11

    invoke-virtual {v0, v3, v9, v1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    aget-object v0, v13, v11

    .line 55
    invoke-virtual {v3, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 56
    :try_start_e
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    aget-object v2, v13, v11

    invoke-virtual {v1, v3, v9, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    .line 57
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 58
    :goto_8
    :try_start_10
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    aget-object v2, v13, v11

    invoke-virtual {v1, v3, v9, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 59
    throw v0

    :cond_14
    aget-object v0, v13, v11

    .line 60
    invoke-virtual {v3, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 61
    :cond_15
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    if-nez v0, :cond_17

    if-eqz v10, :cond_16

    .line 62
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 63
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v4, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-direct {v2, v10, v4}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 64
    :try_start_11
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 65
    :try_start_12
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v4, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-direct {v2, v10, v4}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    .line 66
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 67
    :goto_9
    :try_start_14
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v1, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-direct {v3, v10, v1}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    .line 68
    throw v0

    .line 69
    :cond_16
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    :cond_17
    :goto_a
    if-eqz v10, :cond_18

    .line 70
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 71
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    aget-object v4, v13, v11

    invoke-virtual {v0, v3, v2, v4}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 72
    :try_start_15
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    aget-object v2, v13, v11

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 73
    :try_start_16
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    iget-object v1, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    aget-object v4, v13, v11

    invoke-virtual {v2, v3, v1, v4}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    .line 74
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 75
    :goto_b
    :try_start_18
    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v2

    iget-object v1, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    aget-object v4, v13, v11

    invoke-virtual {v2, v3, v1, v4}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    throw v0

    .line 77
    :cond_18
    iget-object v0, v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    aget-object v1, v13, v11

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    return-object v0

    .line 78
    :goto_c
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :goto_d
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 80
    instance-of v2, v1, Ljavax/xml/transform/TransformerException;

    if-nez v2, :cond_1a

    if-eqz v1, :cond_19

    move-object v0, v1

    .line 81
    :cond_19
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :cond_1a
    check-cast v1, Ljavax/xml/transform/TransformerException;

    throw v1
.end method

.method public isElementAvailable(Ljava/lang/String;)Z
    .locals 6

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v1

    const-class v5, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-class v5, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isFunctionAvailable(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public processElement(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V
    .locals 4
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
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;->getElementMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-direct {v2, p3, v3}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    new-instance v2, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-direct {v2, p3, v3}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p2

    new-instance p4, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-direct {p4, p3, p0}, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V

    invoke-virtual {p2, p4}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_classObj:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {p0, p5, v0, v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJava;->putToCache(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;

    invoke-direct {p1, p3, p4}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    :try_start_5
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p5, v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object p5, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v1, p0, p2}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catchall_1
    move-exception p4

    goto :goto_3

    :catch_2
    move-exception p4

    :try_start_8
    throw p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    :try_start_9
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v1, p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireExtensionEndEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    throw p4

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandlerJavaClass;->m_defaultInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_4
    if-eqz p5, :cond_4

    invoke-virtual {p1, p4, p5}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->outputToResultTree(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catch_3
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljavax/xml/transform/TransformerException;

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_5
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    check-cast p1, Ljavax/xml/transform/TransformerException;

    throw p1
.end method
