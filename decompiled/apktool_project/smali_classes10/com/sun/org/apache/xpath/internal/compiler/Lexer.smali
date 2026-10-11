.class Lcom/sun/org/apache/xpath/internal/compiler/Lexer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TARGETEXTRA:I = 0x2710


# instance fields
.field private m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

.field m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

.field private m_patternMap:[I

.field private m_patternMapSize:I

.field m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMap:[I

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    return-void
.end method

.method private final addToTokenQueue(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private getTokenQueuePosFromMap(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMap:[I

    aget p0, p0, p1

    const/16 p1, 0x2710

    if-lt p0, p1, :cond_0

    add-int/lit16 p0, p0, -0x2710

    :cond_0
    return p0
.end method

.method private mapNSTokens(Ljava/lang/String;III)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    if-eqz v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method private mapPatternElemPos(IZZ)Z
    .locals 3

    if-nez p1, :cond_2

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMap:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    add-int/lit8 p1, p1, 0x64

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMap:[I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMap:[I

    iget p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit16 v0, v0, -0x2710

    aput v0, p1, p2

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMap:[I

    iget p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v0

    sub-int/2addr v0, p3

    add-int/lit16 v0, v0, 0x2710

    aput v0, p1, p2

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    move p2, v2

    :cond_2
    return p2
.end method

.method private recordTokenString(Ljava/util/Vector;)V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->getTokenQueuePosFromMap(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->resetTokenMark(I)V

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const/16 v4, 0x28

    invoke-virtual {v3, v4, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->getKeywordToken(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    const-string v1, "*"

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string p0, "#text"

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const-string p0, "#comment"

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->resetTokenMark(I)V

    move v0, v2

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x2

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final resetTokenMark(I)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const/4 v2, 0x0

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    iput p1, v1, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    iget v3, v0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    iput-char v2, v1, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    :goto_1
    return-void
.end method


# virtual methods
.method public final getKeywordToken(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Keywords;->getKeyWord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p0
.end method

.method public tokenize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->tokenize(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public tokenize(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    iget-object v3, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    iput-object v1, v3, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    iput v4, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_patternMapSize:I

    .line 4
    new-instance v5, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    const/16 v6, 0x9c4

    const/4 v7, 0x1

    invoke-direct {v5, v6, v6, v7}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;-><init>(III)V

    iput-object v5, v3, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, -0x1

    move v6, v4

    move v9, v6

    move v11, v9

    move v13, v11

    move v8, v5

    move v12, v8

    move v10, v7

    :goto_0
    if-ge v6, v3, :cond_1d

    .line 6
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x9

    if-eq v15, v4, :cond_1a

    const/16 v4, 0xa

    if-eq v15, v4, :cond_1a

    const/16 v4, 0xd

    if-eq v15, v4, :cond_1a

    const/16 v4, 0x24

    const/16 v7, 0x7c

    const/16 v14, 0x2f

    if-eq v15, v4, :cond_f

    if-eq v15, v14, :cond_f

    const/16 v4, 0x3a

    if-eq v15, v4, :cond_a

    const/16 v4, 0x40

    if-eq v15, v4, :cond_8

    if-eq v15, v7, :cond_f

    packed-switch v15, :pswitch_data_0

    packed-switch v15, :pswitch_data_1

    packed-switch v15, :pswitch_data_2

    packed-switch v15, :pswitch_data_3

    goto/16 :goto_7

    :pswitch_0
    if-eq v8, v5, :cond_1

    .line 7
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_0

    .line 8
    invoke-direct {v0, v1, v8, v12, v6}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_1
    const/4 v11, 0x0

    const/4 v13, 0x0

    :cond_1
    add-int/lit8 v4, v6, 0x1

    :goto_2
    const/16 v7, 0x27

    if-ge v4, v3, :cond_2

    .line 10
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-ne v15, v7, :cond_3

    if-ge v4, v3, :cond_3

    add-int/lit8 v7, v4, 0x1

    .line 11
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_5

    .line 12
    :cond_3
    iget-object v7, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const-string v8, "ER_EXPECTED_SINGLE_QUOTE"

    const/4 v14, 0x0

    invoke-virtual {v7, v8, v14}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_1
    if-eq v8, v5, :cond_5

    .line 13
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_4

    .line 14
    invoke-direct {v0, v1, v8, v12, v6}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_3
    const/4 v11, 0x0

    const/4 v13, 0x0

    :cond_5
    add-int/lit8 v4, v6, 0x1

    :goto_4
    const/16 v7, 0x22

    if-ge v4, v3, :cond_6

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v7, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    if-ne v15, v7, :cond_7

    if-ge v4, v3, :cond_7

    add-int/lit8 v7, v4, 0x1

    .line 17
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_5
    move v6, v4

    move v8, v5

    goto/16 :goto_f

    .line 18
    :cond_7
    iget-object v7, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const-string v8, "ER_EXPECTED_DOUBLE_QUOTE"

    const/4 v14, 0x0

    invoke-virtual {v7, v8, v14}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move v8, v6

    move v6, v4

    goto/16 :goto_f

    :cond_8
    const/4 v11, 0x1

    :pswitch_2
    const/16 v4, 0x2d

    if-ne v4, v15, :cond_f

    if-nez v13, :cond_9

    if-eq v8, v5, :cond_9

    goto/16 :goto_f

    :cond_9
    const/4 v13, 0x0

    goto :goto_8

    :cond_a
    if-lez v6, :cond_d

    add-int/lit8 v4, v6, -0x1

    if-ne v12, v4, :cond_c

    if-eq v8, v5, :cond_b

    if-ge v8, v4, :cond_b

    .line 19
    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v7, v6, 0x1

    .line 20
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    move v8, v5

    move v12, v8

    goto/16 :goto_e

    :cond_c
    move v12, v6

    :cond_d
    :goto_7
    if-ne v5, v8, :cond_e

    .line 21
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    move v8, v6

    goto/16 :goto_f

    :cond_e
    if-eqz v13, :cond_1c

    .line 22
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    goto/16 :goto_f

    :cond_f
    :goto_8
    :pswitch_3
    if-eq v8, v5, :cond_11

    .line 23
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_10

    .line 24
    invoke-direct {v0, v1, v8, v12, v6}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    goto :goto_9

    .line 25
    :cond_10
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_9
    move v8, v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_a

    :cond_11
    if-ne v14, v15, :cond_12

    if-eqz v10, :cond_12

    .line 26
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    goto :goto_a

    :cond_12
    const/16 v4, 0x2a

    if-ne v4, v15, :cond_13

    .line 27
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    const/4 v11, 0x0

    :cond_13
    :goto_a
    if-nez v9, :cond_15

    if-ne v7, v15, :cond_15

    if-eqz v2, :cond_14

    .line 28
    invoke-direct {v0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    :cond_14
    const/4 v10, 0x1

    :cond_15
    const/16 v4, 0x29

    if-eq v4, v15, :cond_18

    const/16 v4, 0x5d

    if-ne v4, v15, :cond_16

    goto :goto_b

    :cond_16
    const/16 v4, 0x28

    if-eq v4, v15, :cond_17

    const/16 v4, 0x5b

    if-ne v4, v15, :cond_19

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_18
    :goto_b
    add-int/lit8 v9, v9, -0x1

    :cond_19
    :goto_c
    add-int/lit8 v4, v6, 0x1

    .line 29
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_f

    :cond_1a
    :pswitch_4
    if-eq v8, v5, :cond_1c

    .line 30
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_1b

    .line 31
    invoke-direct {v0, v1, v8, v12, v6}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    goto :goto_d

    .line 32
    :cond_1b
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_d
    move v8, v5

    :goto_e
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_10

    :cond_1c
    :goto_f
    const/4 v4, 0x1

    :goto_10
    add-int/2addr v6, v4

    move v7, v4

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1d
    if-eq v8, v5, :cond_20

    .line 33
    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    if-ne v5, v12, :cond_1f

    .line 34
    iget-object v4, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    if-eqz v4, :cond_1e

    invoke-interface {v4}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->handlesNullPrefixes()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_11

    .line 35
    :cond_1e
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_12

    .line 36
    :cond_1f
    :goto_11
    invoke-direct {v0, v1, v8, v12, v3}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    .line 37
    :cond_20
    :goto_12
    iget-object v1, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_compiler:Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    if-nez v1, :cond_21

    .line 38
    iget-object v1, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const-string v2, "ER_EMPTY_EXPRESSION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_21
    if-eqz v2, :cond_22

    .line 39
    invoke-direct {v0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    .line 40
    :cond_22
    :goto_13
    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->m_processor:Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
