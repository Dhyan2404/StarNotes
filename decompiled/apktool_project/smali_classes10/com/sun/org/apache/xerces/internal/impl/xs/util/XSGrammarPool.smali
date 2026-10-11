.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSGrammarPool;
.super Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public toXSModel()Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-array v2, p0, [Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    :goto_2
    if-ge v1, p0, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    return-object p0
.end method
