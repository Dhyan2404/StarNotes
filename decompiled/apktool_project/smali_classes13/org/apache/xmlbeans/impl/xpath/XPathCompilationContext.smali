.class Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _column:I

.field private final _currentNodeVar:Ljava/lang/String;

.field private _expr:Ljava/lang/String;

.field private final _externalNamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _lastDeepDot:Z

.field private _line:I

.field protected final _namespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _offset:I

.field private _sawDeepDot:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    if-nez p2, :cond_0

    const-string p2, "$this"

    :cond_0
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_currentNodeVar:Ljava/lang/String;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    return-void
.end method

.method private addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/xpath/XPathStep;-><init>(ZZLjavax/xml/namespace/QName;)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    move-object p1, p4

    :goto_0
    iget-object p2, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    if-eqz p2, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    iput-object p0, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_prev:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    return-object p4
.end method

.method private computeBacktrack(Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V
    .locals 12

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_deep:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_1

    :cond_0
    iget-boolean v1, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_deep:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :goto_2
    if-eq p1, v0, :cond_d

    iput-boolean v2, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_hasBacktrack:Z

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move-object v3, p1

    move v4, v1

    :goto_3
    if-eq v3, v0, :cond_2

    iget-object v5, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_name:Ljavax/xml/namespace/QName;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->isWild()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_attr:Z

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    new-array v6, v5, [Ljavax/xml/namespace/QName;

    new-array v5, v5, [I

    move-object v8, p1

    move v7, v1

    :goto_4
    if-ge v7, v4, :cond_3

    iget-object v9, v8, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_name:Ljavax/xml/namespace/QName;

    aput-object v9, v6, v7

    iget-object v8, v8, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->getAnyQName()Ljavax/xml/namespace/QName;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, -0x1

    aput v7, v5, v1

    move v8, v1

    move v9, v7

    :goto_5
    if-ge v8, v4, :cond_6

    :goto_6
    if-le v9, v7, :cond_4

    aget-object v10, v6, v8

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    aget v9, v5, v9

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v6, v8

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    aget v10, v5, v9

    goto :goto_7

    :cond_5
    move v10, v9

    :goto_7
    aput v10, v5, v8

    goto :goto_5

    :cond_6
    move-object v6, p1

    :goto_8
    if-eq v6, v3, :cond_8

    iput-boolean v2, v6, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_hasBacktrack:Z

    iput-object p1, v6, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    aget v7, v5, v1

    :goto_9
    if-lez v7, :cond_7

    iget-object v8, v6, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object v8, v8, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iput-object v8, v6, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v6, v6, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_8

    :cond_8
    if-le v4, v2, :cond_9

    add-int/lit8 v4, v4, -0x1

    aget v1, v5, v4

    move-object v4, p1

    :goto_a
    if-lez v1, :cond_a

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_9
    move-object v4, p1

    :cond_a
    if-eq v3, v0, :cond_b

    iget-boolean v1, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_attr:Z

    if-eqz v1, :cond_b

    iput-boolean v2, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_hasBacktrack:Z

    iput-object v4, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    :cond_b
    if-eq v3, v0, :cond_c

    iget-object v1, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_name:Ljavax/xml/namespace/QName;

    if-nez v1, :cond_c

    iput-boolean v2, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_hasBacktrack:Z

    iput-object v4, v3, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    :cond_c
    iput-boolean v2, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_hasBacktrack:Z

    iput-object p1, p1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_backtrack:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    :cond_d
    move-object p1, v0

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private getAnyQName()Ljavax/xml/namespace/QName;
    .locals 1

    new-instance p0, Ljavax/xml/namespace/QName;

    const-string v0, ""

    invoke-direct {p0, v0, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_line:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_column:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;-><init>(Lorg/apache/xmlbeans/XmlError;)V

    return-object p1
.end method

.method private parseWhitespace()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->advance()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private processNonXpathDecls()V
    .locals 0

    return-void
.end method

.method private varargs tokenize([Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->advance(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private tokenizeNCName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->parseWhitespace()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->isNCNameStart()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->advance()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->isNCName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "Expected non-colonized name"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0
.end method

.method private tokenizePath(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/xmlbeans/impl/xpath/XPathStep;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_lastDeepDot:Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeSteps()Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->computeBacktrack(Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_lastDeepDot:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_sawDeepDot:Z

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, v1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, v1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_attr:Z

    if-eqz v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    iget-boolean v5, v1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_deep:Z

    iget-object v6, v1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_name:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v5, v4, v6, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object v3

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/xpath/XPathStep;->_next:Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->computeBacktrack(Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private tokenizeQName()Ljavax/xml/namespace/QName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->getAnyQName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeNCName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeNCName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v1, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private tokenizeQuotedUri()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const-string v0, "\""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const-string v0, "\'"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->advance()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->advance()V

    goto :goto_1

    :cond_2
    const-string v0, "Path terminated in URI literal"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_3
    const-string v0, "Expected quote (\" or \')"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0
.end method

.method private tokenizeSelector()Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizePath(Ljava/util/ArrayList;)V

    :goto_0
    const-string v1, "|"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizePath(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;-><init>([Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V

    return-object p0
.end method

.method private tokenizeSteps()Lorg/apache/xmlbeans/impl/xpath/XPathStep;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_currentNodeVar:Ljava/lang/String;

    const-string v2, "$"

    const-string v3, "//"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    const-string v5, "."

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_4

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_currentNodeVar:Ljava/lang/String;

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_currentNodeVar:Ljava/lang/String;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, v7, v7, v4, v4}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    move v1, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v6

    :goto_2
    move-object v2, v4

    :goto_3
    move v8, v7

    :cond_5
    :goto_4
    const-string v9, "attribute"

    const-string v10, "::"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "@"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_7

    :cond_6
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v8, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v8, v7

    goto :goto_6

    :cond_8
    :goto_5
    move v8, v6

    goto :goto_6

    :cond_9
    const-string v9, "child"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeQName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-direct {p0, v1, v7, v9, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object v2

    move v1, v7

    :goto_6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v1, v6

    goto :goto_3

    :cond_a
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v8, :cond_5

    move v1, v6

    goto :goto_4

    :cond_b
    :goto_7
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeQName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v1, v6, v0, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object v2

    :cond_c
    iput-boolean v8, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_lastDeepDot:Z

    if-eqz v8, :cond_d

    iput-boolean v6, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_lastDeepDot:Z

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->getAnyQName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object v2

    :cond_d
    invoke-direct {p0, v7, v7, v4, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->addStep(ZZLjavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/xpath/XPathStep;)Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v0, "Absolute paths unsupported"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0
.end method

.method private tokenizeXPath()Lorg/apache/xmlbeans/impl/xpath/XPath;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    :goto_0
    const-string v0, "declare"

    const-string v1, "namespace"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v2

    const-string v3, "$xmlbeans!ns_boundary"

    const-string v4, ";"

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->parseWhitespace()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeNCName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeQuotedUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "Redefinition of namespace prefix: "

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    iget v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_2
    const-string v0, "Expected \'=\'"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_3
    const-string v0, "Expected prefix after \'declare namespace\'"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_4
    const-string v2, "default"

    const-string v5, "element"

    filled-new-array {v0, v2, v5, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeQuotedUri()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    const-string v2, "$xmlbeans!default_uri"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenize([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    iget v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v0, "Default Namespace declaration must end with ;"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_6
    const-string v0, "Redefinition of default element namespace : "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_7
    const-string v0, "Redefinition of default element namespace"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :cond_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeSelector()Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->parseWhitespace()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    new-instance v1, Lorg/apache/xmlbeans/impl/xpath/XPath;

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_sawDeepDot:Z

    invoke-direct {v1, v0, p0}, Lorg/apache/xmlbeans/impl/xpath/XPath;-><init>(Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;Z)V

    return-object v1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public advance()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    iget v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    .line 4
    iget v3, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_column:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_column:I

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_2

    .line 5
    :cond_0
    iget v5, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_line:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_line:I

    .line 6
    iput v2, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_column:I

    add-int/2addr v1, v2

    .line 7
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 8
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    iget v5, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    add-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eq v0, v1, :cond_2

    .line 9
    iget v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    :cond_2
    return-void
.end method

.method public advance(I)V
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->advance()V

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compile(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_line:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_column:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->tokenizeXPath()Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object p0

    return-object p0
.end method

.method public currChar()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar(I)I

    move-result p0

    return p0
.end method

.method public currChar(I)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    iget p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    add-int/2addr p0, p1

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method

.method public isNCName()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isNCName(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNCNameStart()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isNCNameStart(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWhitespace()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->isWhitespace(I)Z

    move-result p0

    return p0
.end method

.method public isWhitespace(I)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->currChar(I)I

    move-result p0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1

    const/16 p1, 0xd

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_namespaces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_externalNamespaces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "xsi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "xdt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "xs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->newError(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException;

    move-result-object p0

    throw p0

    :pswitch_0
    const-string p0, "http://www.w3.org/2003/11/xquery-local-functions"

    return-object p0

    :pswitch_1
    const-string p0, "http://www.w3.org/2001/XMLSchema-instance"

    return-object p0

    :pswitch_2
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :pswitch_3
    const-string p0, "http://www.w3.org/2003/11/xpath-datatypes"

    return-object p0

    :pswitch_4
    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0

    :pswitch_5
    const-string p0, "http://www.w3.org/2002/11/xquery-functions"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xcc8 -> :sswitch_5
        0xefb -> :sswitch_4
        0x1cf08 -> :sswitch_3
        0x1d017 -> :sswitch_2
        0x1d0ce -> :sswitch_1
        0x625df6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_expr:Ljava/lang/String;

    iget p0, p0, Lorg/apache/xmlbeans/impl/xpath/XPathCompilationContext;->_offset:I

    add-int/2addr p0, p2

    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
