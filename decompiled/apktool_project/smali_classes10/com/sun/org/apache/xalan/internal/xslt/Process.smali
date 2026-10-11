.class public Lcom/sun/org/apache/xalan/internal/xslt/Process;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "th"

    const-string v3, "ER_NOT_SUCCESSFUL"

    new-instance v4, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const-string v0, "com.sun.org.apache.xalan.internal.res.XSLTErrorResources"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v6

    array-length v0, v1

    if-ge v0, v5, :cond_0

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->printArgOptions(Ljava/util/ResourceBundle;)V

    goto/16 :goto_26

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v8, v1

    const-string v9, "-XSLTC"

    if-ge v0, v8, :cond_1

    aget-object v8, v1, v0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v8, "javax.xml.transform.TransformerFactory"

    const-string v10, "com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl"

    invoke-virtual {v0, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    new-instance v10, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {v10}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v0, v10}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-static {v3, v8}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    move-object v0, v8

    :goto_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    const-string v11, "s2s"

    move-object v13, v8

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_2
    array-length v5, v1

    const-string v7, "http://javax.xml.XMLConstants/feature/secure-processing"

    if-ge v12, v5, :cond_2e

    aget-object v5, v1, v12

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v24, v9

    goto/16 :goto_9

    :cond_2
    const-string v5, "-INDENT"

    move-object/from16 v24, v9

    aget-object v9, v1, v12

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v9, 0x2d

    if-eqz v5, :cond_5

    add-int/lit8 v5, v12, 0x1

    array-length v7, v1

    if-ge v5, v7, :cond_3

    aget-object v7, v1, v5

    move-object/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_4

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move v12, v5

    goto :goto_3

    :cond_3
    move-object/from16 v25, v3

    :cond_4
    :goto_3
    move-object/from16 v26, v2

    :goto_4
    move-object/from16 v27, v4

    goto/16 :goto_9

    :cond_5
    move-object/from16 v25, v3

    aget-object v3, v1, v12

    const-string v5, "-IN"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v9, "ER_MISSING_ARG_FOR_OPTION"

    if-eqz v3, :cond_8

    add-int/lit8 v3, v12, 0x1

    array-length v7, v1

    if-ge v3, v7, :cond_6

    aget-object v7, v1, v3

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v2, 0x2d

    if-eq v7, v2, :cond_7

    aget-object v13, v1, v3

    move v12, v3

    goto :goto_4

    :cond_6
    move-object/from16 v26, v2

    :cond_7
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object/from16 v26, v2

    aget-object v2, v1, v12

    const-string v3, "-MEDIA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    if-ge v2, v5, :cond_9

    aget-object v17, v1, v2

    :goto_5
    move v12, v2

    goto :goto_4

    :cond_9
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    aget-object v2, v1, v12

    const-string v3, "-OUT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    if-ge v2, v5, :cond_b

    aget-object v5, v1, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_b

    aget-object v3, v1, v2

    move v12, v2

    move-object v8, v3

    goto :goto_4

    :cond_b
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    aget-object v2, v1, v12

    const-string v3, "-XSL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    if-ge v2, v5, :cond_d

    aget-object v5, v1, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_d

    aget-object v14, v1, v2

    goto :goto_5

    :cond_d
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    aget-object v2, v1, v12

    const-string v3, "-FLAVOR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    if-ge v2, v5, :cond_f

    aget-object v3, v1, v2

    move v12, v2

    move-object v11, v3

    goto/16 :goto_4

    :cond_f
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    aget-object v2, v1, v12

    const-string v3, "-PARAM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v2, v12, 0x2

    array-length v5, v1

    if-ge v2, v5, :cond_11

    add-int/lit8 v12, v12, 0x1

    aget-object v2, v1, v12

    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x1

    add-int/2addr v12, v2

    aget-object v2, v1, v12

    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_11
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const-string v2, "-E"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_6
    goto/16 :goto_4

    :cond_13
    const-string v2, "-V"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version"

    invoke-virtual {v6, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "version2"

    invoke-virtual {v6, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    const-string v2, "-Q"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_6

    :cond_15
    const-string v2, "-DIAG"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v27, v4

    const/4 v2, 0x1

    const/16 v22, 0x1

    goto/16 :goto_a

    :cond_16
    const-string v2, "-XML"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "xml"

    :goto_7
    move-object/from16 v18, v2

    goto/16 :goto_4

    :cond_17
    const-string v2, "-TEXT"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "text"

    goto :goto_7

    :cond_18
    const-string v2, "-HTML"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "html"

    goto :goto_7

    :cond_19
    const-string v2, "-EDUMP"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, v12, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_1a

    aget-object v3, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_1a

    aget-object v15, v1, v2

    move v12, v2

    :cond_1a
    move-object/from16 v27, v4

    const/4 v2, 0x1

    const/16 v23, 0x1

    goto/16 :goto_a

    :cond_1b
    const-string v2, "-URIRESOLVER"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ER_CLASS_NOT_FOUND_FOR_OPTION"

    if-eqz v2, :cond_1d

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    const-string v7, "-URIResolver"

    if-ge v2, v5, :cond_1c

    :try_start_1
    aget-object v5, v1, v2

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v12, 0x1

    invoke-static {v5, v9, v12}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/transform/URIResolver;
    :try_end_1
    .catch Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory$ConfigurationError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0, v5}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory$ConfigurationError; {:try_start_2 .. :try_end_2} :catch_1

    move v12, v2

    move-object/from16 v27, v4

    move-object/from16 v19, v5

    goto/16 :goto_9

    :catch_1
    move-object/from16 v19, v5

    :catch_2
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1d
    const-string v2, "-ENTITYRESOLVER"

    aget-object v5, v1, v12

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    const-string v7, "-EntityResolver"

    if-ge v2, v5, :cond_1e

    :try_start_3
    aget-object v5, v1, v2

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v12, 0x1

    invoke-static {v5, v9, v12}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xml/sax/EntityResolver;
    :try_end_3
    .catch Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory$ConfigurationError; {:try_start_3 .. :try_end_3} :catch_3

    move v12, v2

    move-object/from16 v27, v4

    move-object/from16 v20, v5

    goto/16 :goto_9

    :catch_3
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1e
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1f
    const-string v2, "-CONTENTHANDLER"

    aget-object v5, v1, v12

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, v12, 0x1

    array-length v5, v1

    if-ge v2, v5, :cond_20

    :try_start_4
    aget-object v5, v1, v2

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v5, v7, v9}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xml/sax/ContentHandler;
    :try_end_4
    .catch Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory$ConfigurationError; {:try_start_4 .. :try_end_4} :catch_4

    move v12, v2

    move-object/from16 v27, v4

    move-object/from16 v21, v5

    goto/16 :goto_9

    :catch_4
    const-string v5, "-ContentHandler"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_20
    const-string v2, "-ContentHandler"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_21
    const-string v2, "-XO"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "generate-translet"

    const-string v5, "true"

    if-eqz v2, :cond_23

    add-int/lit8 v2, v12, 0x1

    array-length v7, v1

    if-ge v2, v7, :cond_22

    aget-object v7, v1, v2

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2d

    if-eq v7, v9, :cond_22

    invoke-virtual {v0, v3, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "translet-name"

    aget-object v5, v1, v2

    invoke-virtual {v0, v3, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_22
    invoke-virtual {v0, v3, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_23
    const-string v2, "-XD"

    move-object/from16 v27, v4

    aget-object v4, v1, v12

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    add-int/lit8 v2, v12, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_24

    aget-object v3, v1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_24

    const-string v3, "destination-directory"

    aget-object v4, v1, v2

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    move v12, v2

    goto/16 :goto_9

    :cond_24
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "-XD"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_25
    const-string v2, "-XJ"

    aget-object v4, v1, v12

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v2, v12, 0x1

    array-length v4, v1

    if-ge v2, v4, :cond_26

    aget-object v4, v1, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_26

    invoke-virtual {v0, v3, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "jar-name"

    aget-object v4, v1, v2

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_26
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "-XJ"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_27
    const-string v2, "-XP"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, v12, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_28

    aget-object v3, v1, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_28

    const-string v3, "package-name"

    aget-object v4, v1, v2

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_28
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "-XP"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_29
    const-string v2, "-XN"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "enable-inlining"

    invoke-virtual {v0, v2, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_2a
    const-string v2, "-XX"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "debug"

    invoke-virtual {v0, v2, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_2b
    const-string v2, "-XT"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "auto-translet"

    invoke-virtual {v0, v2, v5}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_2c
    const-string v2, "-SECURE"

    aget-object v3, v1, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v0, v7, v2}, Ljavax/xml/transform/TransformerFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_a

    :cond_2d
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v3, v1, v12

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ER_INVALID_OPTION"

    invoke-static {v4, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_9
    const/4 v2, 0x1

    :goto_a
    add-int/2addr v12, v2

    move-object/from16 v9, v24

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    move-object/from16 v4, v27

    goto/16 :goto_2

    :cond_2e
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    if-nez v13, :cond_2f

    if-nez v14, :cond_2f

    const-string v1, "xslProc_no_input"

    invoke-virtual {v6, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    :cond_2f
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    if-eqz v15, :cond_30

    :try_start_7
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v15}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v15

    move-object/from16 v0, v27

    move-object v3, v0

    :goto_b
    const/4 v1, 0x1

    goto/16 :goto_21

    :cond_30
    move-object/from16 v3, v27

    :goto_c
    const-string v4, "d2d"

    if-eqz v14, :cond_33

    :try_start_8
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v16, :cond_31

    :try_start_9
    invoke-virtual {v5, v7, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_6
    :cond_31
    :try_start_a
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v14}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, v5, v14}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v5

    goto :goto_d

    :cond_32
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v5, v14}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v5

    goto :goto_d

    :cond_33
    const/4 v5, 0x0

    :goto_d
    if-eqz v8, :cond_34

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v8}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    move-object/from16 v17, v15

    move-object/from16 v3, v27

    goto :goto_b

    :cond_34
    :try_start_b
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    :goto_e
    move-object v9, v0

    check-cast v9, Ljavax/xml/transform/sax/SAXTransformerFactory;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-nez v5, :cond_37

    :try_start_c
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v5, v13}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 p0, v3

    move-object/from16 v12, v17

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v9, v5, v12, v3, v3}, Ljavax/xml/transform/TransformerFactory;->getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v0, v5}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v5

    goto :goto_12

    :cond_35
    if-eqz v12, :cond_36

    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_NO_STYLESHEET_IN_MEDIA"

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_NO_STYLESHEET_PI"

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object/from16 p0, v3

    :goto_f
    move-object v2, v0

    move-object/from16 v17, v15

    :goto_10
    move-object/from16 v3, v27

    :goto_11
    const/4 v1, 0x1

    goto/16 :goto_20

    :cond_37
    move-object/from16 p0, v3

    :goto_12
    if-eqz v5, :cond_4a

    move-object/from16 v3, v26

    :try_start_e
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    goto :goto_13

    :cond_38
    invoke-interface {v5}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    :goto_13
    new-instance v12, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {v12}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v0, v12}, Ljavax/xml/transform/Transformer;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object/from16 v12, v18

    if-eqz v12, :cond_39

    move-object/from16 v17, v15

    :try_start_f
    const-string v15, "method"

    invoke-virtual {v0, v15, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_39
    move-object/from16 v17, v15

    :goto_14
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v12, :cond_3a

    invoke-virtual {v10, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v24, v12

    move-object/from16 v12, v18

    check-cast v12, Ljava/lang/String;

    move-object/from16 v18, v14

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v12, v14}, Ljavax/xml/transform/Transformer;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v14, v18

    move/from16 v12, v24

    goto :goto_15

    :cond_3a
    move-object/from16 v18, v14

    move-object/from16 v10, v19

    if-eqz v10, :cond_3b

    invoke-virtual {v0, v10}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_3b
    if-eqz v13, :cond_49

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v16, :cond_3c

    :try_start_10
    invoke-virtual {v3, v7, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catch_7
    :cond_3c
    :try_start_11
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object/from16 v4, v20

    if-eqz v4, :cond_3d

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_3d
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v3

    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v4, v13}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v4, v3}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v7, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v0, v4}, Ljavax/xml/transform/Transformer;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    invoke-interface {v5}, Ljavax/xml/transform/Templates;->getOutputProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/xml/transform/Transformer;->setOutputProperties(Ljava/util/Properties;)V

    move-object/from16 v10, v21

    if-eqz v10, :cond_3e

    new-instance v4, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {v4, v10}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v5, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto/16 :goto_18

    :cond_3e
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v4, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto/16 :goto_18

    :cond_3f
    move-object/from16 v4, v20

    move-object/from16 v10, v21

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v3, :cond_43

    :try_start_12
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_12
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v16, :cond_40

    :try_start_13
    invoke-virtual {v0, v7, v3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :catch_8
    :cond_40
    :try_start_14
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_16

    :catch_9
    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_41

    :try_start_15
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    :cond_41
    invoke-virtual {v9, v5}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    instance-of v4, v3, Lorg/xml/sax/ErrorHandler;

    if-eqz v4, :cond_42

    move-object v4, v3

    check-cast v4, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :cond_42
    :try_start_16
    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v0, v4, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catch_a
    :try_start_17
    const-string v4, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_17
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catch_b
    :try_start_18
    invoke-interface {v3, v6}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto/16 :goto_18

    :catch_c
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_d
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_43
    if-eqz v4, :cond_47

    :try_start_19
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_19 .. :try_end_19} :catch_10
    .catch Ljava/lang/NoSuchMethodError; {:try_start_19 .. :try_end_19} :catch_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_19 .. :try_end_19} :catch_f
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v16, :cond_44

    :try_start_1a
    invoke-virtual {v3, v7, v5}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1a
    .catch Lorg/xml/sax/SAXException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :catch_e
    :cond_44
    :try_start_1b
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3
    :try_end_1b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1b .. :try_end_1b} :catch_10
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_17

    :catch_f
    const/4 v3, 0x0

    :goto_17
    if-nez v3, :cond_45

    :try_start_1c
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    :cond_45
    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    if-eqz v10, :cond_46

    new-instance v4, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {v4, v10}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Ljavax/xml/transform/sax/SAXSource;

    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v7}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    invoke-virtual {v0, v5, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_18

    :cond_46
    new-instance v4, Ljavax/xml/transform/sax/SAXSource;

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    invoke-virtual {v0, v4, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_18

    :catch_10
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_47
    if-eqz v10, :cond_48

    new-instance v3, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {v3, v10}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v13}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_18

    :cond_48
    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v3, v13}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_18

    :cond_49
    new-instance v3, Ljava/io/StringReader;

    const-string v4, "<?xml version=\"1.0\"?> <doc/>"

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v4, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :goto_18
    move-object/from16 v3, v27

    goto :goto_1a

    :catchall_4
    move-exception v0

    goto :goto_19

    :catchall_5
    move-exception v0

    move-object/from16 v17, v15

    :goto_19
    move-object v2, v0

    goto/16 :goto_10

    :cond_4a
    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object/from16 v3, v25

    const/4 v4, 0x0

    :try_start_1d
    invoke-static {v3, v4}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    move-object/from16 v3, v27

    :try_start_1e
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :goto_1a
    if-eqz v8, :cond_4c

    :try_start_1f
    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v0, :cond_4b

    :try_start_20
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4b
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto :goto_1b

    :catchall_6
    move-exception v0

    move-object v2, v0

    goto/16 :goto_11

    :catch_12
    :cond_4c
    :goto_1b
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    if-eqz v22, :cond_4d

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    const/4 v1, 0x1

    :try_start_22
    aput-object v18, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "diagTiming"

    invoke-static {v2, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto :goto_1c

    :catchall_7
    move-exception v0

    goto :goto_1f

    :cond_4d
    :goto_1c
    move-object/from16 v3, p0

    goto/16 :goto_25

    :catchall_8
    move-exception v0

    goto :goto_1e

    :catchall_9
    move-exception v0

    goto :goto_1d

    :catchall_a
    move-exception v0

    move-object/from16 p0, v3

    move-object/from16 v17, v15

    :goto_1d
    move-object/from16 v3, v27

    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    move-object v2, v0

    :goto_20
    move-object/from16 v0, p0

    goto :goto_21

    :catchall_b
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v3, v27

    const/4 v1, 0x1

    move-object v2, v0

    move-object v0, v3

    :goto_21
    instance-of v4, v2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v4, :cond_4e

    check-cast v2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v2

    goto :goto_21

    :cond_4e
    instance-of v4, v2, Ljava/lang/NullPointerException;

    if-nez v4, :cond_50

    instance-of v4, v2, Ljava/lang/ClassCastException;

    if-eqz v4, :cond_4f

    goto :goto_22

    :cond_4f
    move/from16 v5, v23

    goto :goto_23

    :cond_50
    :goto_22
    move v5, v1

    :goto_23
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_51

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_24

    :cond_51
    invoke-static {v3, v2}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ER_XSLT_ERROR"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_24
    if-eqz v17, :cond_52

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_52
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->doExit(Ljava/lang/String;)V

    move-object v3, v0

    :goto_25
    if-eqz v17, :cond_53

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_53
    :goto_26
    return-void
.end method

.method public static doExit(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static printArgOptions(Ljava/util/ResourceBundle;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "xslProc_option"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "xslProc_common_options"

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXSLTC"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionIN"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXSL"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionOUT"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionV"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionEDUMP"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXML"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionTEXT"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionHTML"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionPARAM"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionMEDIA"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionFLAVOR"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionDIAG"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionURIRESOLVER"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionENTITYRESOLVER"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->waitForReturnKey(Ljava/util/ResourceBundle;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionCONTENTHANDLER"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionSECUREPROCESSING"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "xslProc_xsltc_options"

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXO"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xslt/Process;->waitForReturnKey(Ljava/util/ResourceBundle;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXD"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXJ"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXP"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXN"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXX"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "optionXT"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static printInvalidXSLTCOption(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "xslProc_invalid_xsltc_option"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static printInvalidXalanOption(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "xslProc_invalid_xalan_option"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static waitForReturnKey(Ljava/util/ResourceBundle;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "xslProc_return_to_continue"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    sget-object p0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
