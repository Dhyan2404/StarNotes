.class public Lorg/apache/xerces/impl/xs/XSGrammarBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Hashtable;

.field public b:Lorg/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->b:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method


# virtual methods
.method public getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->b:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-object p0
.end method

.method public getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->b:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    new-array v1, v0, [Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->a:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->b:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz p0, :cond_1

    sub-int/2addr v0, v3

    aput-object p0, v1, v0

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v6, v1, v2

    move v2, v5

    goto :goto_1
.end method

.method public putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->b:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;Z)Z
    .locals 7

    .line 2
    iget-object v0, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

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

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    return v2

    :cond_3
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1
    if-gez p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v4, v3, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2
    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_9
    if-eq v4, v3, :cond_a

    return v1

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z
    .locals 4

    .line 3
    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result p0

    return p0

    :cond_0
    iget-object p3, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_1
    const/4 p3, 0x1

    if-nez p2, :cond_2

    return p3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object p1

    if-nez p1, :cond_3

    return p3

    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p2, v0, :cond_5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    sub-int/2addr p2, p3

    :goto_1
    if-gez p2, :cond_4

    return p3

    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, p3

    :goto_2
    if-gez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->b:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
