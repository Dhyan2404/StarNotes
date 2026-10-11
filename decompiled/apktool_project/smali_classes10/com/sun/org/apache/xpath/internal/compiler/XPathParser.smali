.class public Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "CONTINUE_AFTER_FATAL_ERROR"

.field protected static final FILTER_MATCH_FAILED:I = 0x0

.field protected static final FILTER_MATCH_PREDICATES:I = 0x2

.field protected static final FILTER_MATCH_PRIMARY:I = 0x1


# instance fields
.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

.field m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

.field private m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

.field m_queueMark:I

.field m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field transient m_token:Ljava/lang/String;

.field transient m_tokenChar:C


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final consumeExpected(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_EXPECTED_BUT_FOUND"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance p0, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;

    const-string p1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final consumeExpected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_EXPECTED_BUT_FOUND"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance p0, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;

    const-string p1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getTokenRelative(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final lookahead(Ljava/lang/String;I)Z
    .locals 4

    .line 5
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr p2, v3

    add-int/2addr p0, p2

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private final lookbehind(CI)Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    if-ne p0, p1, :cond_0

    :goto_0
    move p2, v1

    :cond_2
    return p2
.end method

.method private final lookbehindHasToken(I)Z
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 p1, 0x7c

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    return v2
.end method

.method private final nextToken()V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    iput-char v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    :goto_0
    return-void
.end method

.method private final prevToken()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v2, v2, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    iput-char v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    :goto_0
    return-void
.end method


# virtual methods
.method public AbbreviatedNodeTestStep(Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    const/16 v3, 0x34

    const/16 v4, 0x33

    const/16 v5, 0x2f

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    :goto_0
    move p1, v7

    goto :goto_2

    :cond_0
    const-string v2, "::"

    invoke-direct {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v2

    const/16 v8, 0x35

    if-eqz v2, :cond_3

    const-string p1, "attribute"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    move p1, v7

    goto :goto_1

    :cond_1
    const-string p1, "child"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p1

    invoke-virtual {p0, v6, v8}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    move v4, v8

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ER_AXES_NOT_ALLOWED"

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v7

    move v4, p1

    :goto_1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_4

    const-string p1, "ER_EXPECTED_STEP_PATTERN"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, v6, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    move v4, v3

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p1

    invoke-virtual {p0, v6, v8}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    move v4, v8

    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v1, v6}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->NodeTest(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v2, v6, v8}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_3
    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Predicate()V

    goto :goto_3

    :cond_6
    if-le p1, v7, :cond_7

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, p1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    move p1, v1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return p1
.end method

.method public AdditiveExpr(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->MultiplicativeExpr(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_0
    add-int/2addr p1, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public AndExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->EqualityExpr(I)I

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "and"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AndExpr()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :cond_0
    return-void
.end method

.method public Argument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x1a

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public AxisName()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xpath/internal/compiler/Keywords;->getAxisName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_ILLEGAL_AXIS_NAME"

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    return v0
.end method

.method public Basis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const-string v2, "::"

    invoke-direct {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AxisName()I

    move-result v2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    const/16 v2, 0x27

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x28

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->NodeTest(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public BooleanExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x12

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v2, v3, :cond_0

    const-string v3, "ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public EqualityExpr(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->RelationalExpr(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_0
    add-int/2addr p1, v3

    :cond_2
    return p1
.end method

.method public Expr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->OrExpr()V

    return-void
.end method

.method public FilterExpr()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->PrimaryExpr()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x1c

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Predicate()V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public FunctionCall()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    const/16 v5, 0x18

    invoke-virtual {p0, v3, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v5, 0x1

    iget v7, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v7, v1

    invoke-virtual {v3, v6, v7}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v5, v5, 0x2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v5, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->getFunctionToken(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "ER_COULDNOT_FIND_FUNCTION"

    invoke-virtual {p0, v5, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x3

    const/16 v5, 0x19

    invoke-virtual {p0, v3, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v1

    invoke-virtual {v3, v5, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :goto_0
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    :cond_2
    :goto_1
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const-string v5, "ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG"

    invoke-virtual {p0, v5, v6}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Argument()V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG"

    invoke-virtual {p0, v2, v6}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return v1

    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public IdKeyPattern()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->FunctionCall()Z

    return-void
.end method

.method public Literal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-char v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    if-eq v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x27

    if-ne v2, v4, :cond_2

    if-ne v3, v4, :cond_2

    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v3, v3, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    new-instance v3, Lcom/sun/org/apache/xpath/internal/objects/XString;

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v0, v0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {v0, v3, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_PATTERN_LITERAL_NEEDS_BE_QUOTED"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public LocationPath()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x1c

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v4, 0x32

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v6, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0x23

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "ER_EXPECTED_LOC_PATH_AT_END_EXPR"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ER_EXPECTED_LOC_PATH"

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public LocationPathPattern()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x1f

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    const/16 v4, 0x34

    const/16 v5, 0x2f

    const/4 v6, 0x4

    if-eqz v2, :cond_3

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->IdKeyPattern()V

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x35

    invoke-virtual {p0, v6, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4, v6}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0x40a

    invoke-virtual {v2, v4, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    move v2, v3

    goto :goto_1

    :cond_4
    const/16 v2, 0x32

    invoke-virtual {p0, v6, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v1

    const/16 v6, 0x23

    invoke-virtual {v4, v5, v6}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    const/16 v4, 0x7c

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->RelativePathPattern()V

    goto :goto_4

    :cond_6
    if-ne v2, v3, :cond_7

    const-string v2, "ER_EXPECTED_REL_PATH_PATTERN"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public MultiplicativeExpr(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->UnaryExpr()V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_0
    add-int/2addr p1, v2

    goto/16 :goto_1

    :cond_1
    const-string v0, "div"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xd

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_2
    const-string v0, "mod"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xe

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_3
    const-string v0, "quo"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return p1
.end method

.method public NCName()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    return-void
.end method

.method public NodeTest(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 p1, 0x28

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/xpath/internal/compiler/Keywords;->getNodeType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_NODETYPE"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    const/16 p1, 0x408

    const/16 v0, 0x29

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Literal()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v2, 0x22

    invoke-virtual {p1, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    const/16 p1, 0x3a

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ER_EXPECTED_NODE_TEST"

    const/16 v4, 0x5f

    const/4 v5, -0x3

    const/16 v6, 0x2a

    if-eqz v1, :cond_5

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v7

    invoke-virtual {v1, v7, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v7

    iget v8, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v8, v0

    invoke-virtual {v1, v7, v8}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-char v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v7, -0x2

    invoke-virtual {p1, v1, v7}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    invoke-virtual {p1, v1, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v1, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-char p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    :goto_3
    return-void
.end method

.method public Number()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x65

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/16 v2, 0x45

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_COULDNOT_BE_FORMATTED_TO_NUMBER"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v2, v2, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    new-instance v3, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-direct {v3, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    :cond_1
    return-void
.end method

.method public NumberExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public OrExpr()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AndExpr()V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "or"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->OrExpr()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :cond_0
    return-void
.end method

.method public PathExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->FilterExpr()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    if-nez v2, :cond_1

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    move v2, v1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ER_EXPECTED_REL_LOC_PATH"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->LocationPath()V

    :cond_4
    :goto_1
    return-void
.end method

.method public Pattern()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->LocationPathPattern()V

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Predicate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->PredicateExpr()V

    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    :cond_0
    return-void
.end method

.method public PredicateExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x1d

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public PrimaryExpr()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    iget-char v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x27

    const/4 v4, 0x2

    if-eq v2, v3, :cond_8

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x16

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->QName()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x17

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v5, :cond_5

    const/16 v6, 0x2e

    if-ne v6, v2, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-char v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/16 v2, 0x1b

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Number()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->FunctionCall()Z

    move-result v1

    goto :goto_2

    :cond_8
    :goto_1
    const/16 v2, 0x15

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Literal()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_2
    return v1
.end method

.method public QName()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x3a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    iget v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->consumeExpected(C)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    return-void
.end method

.method public RelationalExpr(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AdditiveExpr(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_1
    add-int/2addr p1, v3

    goto :goto_3

    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_1

    :cond_4
    :goto_3
    return p1
.end method

.method public RelativeLocationPath()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ER_EXPECTED_LOC_STEP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public RelativePathPattern()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    :goto_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Step()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    const/16 v3, 0x2a

    const/16 v4, 0x409

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v5, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    iget-object v6, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v1, v7}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v6, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v6, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v1, v7}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v6, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v6, v8, v9}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v6, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v6, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    :cond_0
    const-string v6, "."

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x5b

    const/4 v9, 0x4

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v8}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ER_PREDICATE_ILLEGAL_SYNTAX"

    invoke-virtual {p0, v0, v7}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x30

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2, v9}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_2
    const-string v6, ".."

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/16 v0, 0x2d

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2, v9}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "ER_EXPECTED_LOC_STEP"

    invoke-virtual {p0, v0, v7}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v4

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Basis()V

    :goto_1
    invoke-virtual {p0, v8}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Predicate()V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :goto_2
    return v1
.end method

.method public StepPattern(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->AbbreviatedNodeTestStep(Z)Z

    move-result p0

    return p0
.end method

.method public StringExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public UnaryExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    iget-char v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->appendOp(II)V

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->UnionExpr()V

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :cond_1
    return-void
.end method

.method public UnionExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->PathExpr()V

    const/16 v3, 0x7c

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    const/16 v3, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->insertOp(III)V

    move v2, v1

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public appendOp(II)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, v0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public dumpRemainingTokenQueue()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "\n Remaining tokens: ("

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object v2, v2, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_0
    throw v0
.end method

.method public errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    new-instance v0, Lcom/sun/org/apache/xpath/internal/domapi/XPathStylesheetDOM3Exception;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathStylesheetDOM3Exception;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_0
    throw v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public final getFunctionToken(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Keywords;->lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public initMatchPattern(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getFunctionTable()Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;

    invoke-direct {v0, p1, p3, p0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 p2, 0x0

    const/16 p3, 0x1e

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Pattern()V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, ""

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "ER_EXTRA_ILLEGAL_TOKENS"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->shrink()V

    return-void
.end method

.method public initXPath(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "\'"

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getFunctionTable()Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    new-instance v1, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;

    invoke-direct {v1, p1, p3, p0}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x2

    invoke-virtual {p2, v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->Expr()V

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p2, ""

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->nextToken()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "ER_EXTRA_ILLEGAL_TOKENS"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xpath/internal/XPathProcessorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "/.."

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->initXPath(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->shrink()V

    return-void

    :cond_3
    throw p2
.end method

.method public insertOp(III)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lt v2, p1, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int v4, v2, p2

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {v2, p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    add-int/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method public final lookahead(CI)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v0, p2

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result p2

    const/4 v1, 0x0

    if-gt v0, p2, :cond_0

    if-lez v0, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueueSize()I

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_ops:Lcom/sun/org/apache/xpath/internal/compiler/OpMap;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p1, :cond_0

    move v1, p2

    :cond_0
    return v1
.end method

.method public setErrorHandler(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public final tokenIs(C)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-char p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_tokenChar:C

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final tokenIs(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
