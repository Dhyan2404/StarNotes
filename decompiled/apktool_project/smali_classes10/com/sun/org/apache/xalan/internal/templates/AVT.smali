.class public Lcom/sun/org/apache/xalan/internal/templates/AVT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitable;


# static fields
.field private static final INIT_BUFFER_CHUNK_BITS:I = 0x8

.field private static final USE_OBJECT_POOL:Z = false

.field static final serialVersionUID:J = 0x47b707542b5c3003L


# instance fields
.field private transient m_cachedBuf:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

.field private m_name:Ljava/lang/String;

.field private m_parts:Ljava/util/Vector;

.field private m_rawName:Ljava/lang/String;

.field private m_simpleString:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "}"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    iput-object v5, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_uri:Ljava/lang/String;

    iput-object v2, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_name:Ljava/lang/String;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_rawName:Ljava/lang/String;

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "{}\"\'"

    const/4 v8, 0x1

    invoke-direct {v6, v3, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_0

    iput-object v3, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    goto/16 :goto_a

    :cond_0
    new-instance v9, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(I)V

    new-instance v11, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v11, v10}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(I)V

    new-instance v10, Ljava/util/Vector;

    add-int/2addr v7, v8

    invoke-direct {v10, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v10, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object v7, v5

    move-object v10, v7

    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_10

    if-eqz v7, :cond_1

    move-object v12, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    move-object v12, v7

    move-object/from16 v7, v16

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v8, :cond_e

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-eq v14, v15, :cond_d

    const/16 v15, 0x27

    if-eq v14, v15, :cond_d

    const/16 v15, 0x7d

    const/16 v8, 0x7b

    if-eq v14, v8, :cond_4

    if-eq v14, v15, :cond_2

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    move-object/from16 v8, p6

    move-object v14, v5

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :try_start_0
    const-string v8, "WG_FOUND_CURLYBRACE"

    invoke-virtual {v1, v8, v5}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    move-object/from16 v8, p6

    move-object v14, v5

    goto/16 :goto_8

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    const-string v7, "{"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v9, v12}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v8, p6

    move-object v7, v5

    move-object v14, v7

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    :cond_6
    invoke-virtual {v11, v13}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    :goto_3
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_b

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-eq v5, v7, :cond_9

    const/16 v7, 0x27

    if-eq v5, v7, :cond_9

    if-eq v5, v8, :cond_8

    if-eq v5, v15, :cond_7

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    invoke-virtual {v9, v13}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    invoke-virtual {v11}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v8, p6

    :try_start_3
    invoke-virtual {v1, v5, v8}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v5

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;

    invoke-direct {v14, v5}, Lcom/sun/org/apache/xalan/internal/templates/AVTPartXPath;-><init>(Lcom/sun/org/apache/xpath/internal/XPath;)V

    invoke-virtual {v7, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v8, 0x7b

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v8, p6

    const-string v5, "ER_NO_CURLYBRACE"
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v14, 0x0

    :try_start_4
    invoke-static {v5, v14}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v14

    goto :goto_5

    :cond_9
    move-object/from16 v8, p6

    const/4 v14, 0x0

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    :try_start_5
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v11, v5}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_a
    invoke-virtual {v11, v5}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-object v12, v5

    goto :goto_6

    :cond_b
    move-object/from16 v8, p6

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v11, v12}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    const/16 v8, 0x7b

    goto :goto_3

    :cond_c
    move-object/from16 v8, p6

    const/4 v14, 0x0

    goto :goto_7

    :catch_2
    move-object/from16 v8, p6

    :catch_3
    const/4 v14, 0x0

    goto :goto_6

    :catch_4
    move-object/from16 v8, p6

    move-object v14, v5

    :catch_5
    :goto_6
    const-string v5, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_d
    move-object/from16 v8, p6

    move-object v14, v5

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object/from16 v8, p6

    move-object v14, v5

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_7
    move-object v7, v12

    :goto_8
    if-eqz v10, :cond_f

    :try_start_7
    const-string v2, "WG_ATTR_TEMPLATE"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    throw v0

    :catch_6
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    move-object v5, v14

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_9
    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;

    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    :cond_11
    :goto_a
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, ""

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method private final getBuffer()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_cachedBuf:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_cachedBuf:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(I)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_cachedBuf:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    return-object p0
.end method


# virtual methods
.method public callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitAVT(Lcom/sun/org/apache/xalan/internal/templates/AVT;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitable;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;->canTraverseOutsideSubtree()Z

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

.method public evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getBuffer()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;

    invoke-virtual {v4, p1, v0, p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    throw p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_rawName:Ljava/lang/String;

    return-object p0
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getBuffer()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/AVTPart;->getSimpleString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    throw p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_uri:Ljava/lang/String;

    return-object p0
.end method

.method public isContextInsensitive()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimple()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_rawName:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/AVT;->m_uri:Ljava/lang/String;

    return-void
.end method
