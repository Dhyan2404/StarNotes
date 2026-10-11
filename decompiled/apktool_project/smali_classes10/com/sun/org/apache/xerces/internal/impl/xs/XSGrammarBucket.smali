.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fGrammarRegistry:Ljava/util/Hashtable;

.field fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    return-void
.end method


# virtual methods
.method public getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    return-object p0
.end method

.method public getGrammars()[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aput-object v6, v1, v2

    move v2, v5

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz p0, :cond_2

    sub-int/2addr v0, v3

    aput-object p0, v1, v0

    :cond_2
    return-object v1
.end method

.method public putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Z)Z
    .locals 7

    .line 4
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return v2

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p2

    if-nez p2, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return v2

    .line 8
    :cond_3
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    move v0, v1

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 10
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    .line 11
    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v4

    if-nez v4, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_7

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    .line 15
    invoke-virtual {p2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 16
    invoke-virtual {p2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    if-eq v4, v3, :cond_7

    return v1

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    .line 18
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_9

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->putGrammar(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_9
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fNoNSGrammar:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGrammarBucket;->fGrammarRegistry:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
