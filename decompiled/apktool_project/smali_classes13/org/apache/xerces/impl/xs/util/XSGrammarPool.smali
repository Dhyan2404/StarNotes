.class public Lorg/apache/xerces/impl/xs/util/XSGrammarPool;
.super Lorg/apache/xerces/util/XMLGrammarPoolImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public toXSModel()Lorg/apache/xerces/xs/XSModel;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel(S)Lorg/apache/xerces/xs/XSModel;

    move-result-object p0

    return-object p0
.end method

.method public toXSModel(S)Lorg/apache/xerces/xs/XSModel;
    .locals 6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v3

    if-lt v2, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v1, [Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel([Lorg/apache/xerces/impl/xs/SchemaGrammar;S)Lorg/apache/xerces/xs/XSModel;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v1, v2, [Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel([Lorg/apache/xerces/impl/xs/SchemaGrammar;S)Lorg/apache/xerces/xs/XSModel;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object v3, v3, v2

    :goto_1
    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v4}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, v3, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1
.end method

.method public toXSModel([Lorg/apache/xerces/impl/xs/SchemaGrammar;S)Lorg/apache/xerces/xs/XSModel;
    .locals 0

    .line 3
    new-instance p0, Lorg/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XSModelImpl;-><init>([Lorg/apache/xerces/impl/xs/SchemaGrammar;S)V

    return-object p0
.end method
