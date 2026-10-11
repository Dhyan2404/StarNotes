.class public Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected fActiveGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

.field protected final fGrammars:Ljava/util/Hashtable;

.field protected fIsStandalone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/xerces/impl/dtd/DTDGrammar;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return p0
.end method

.method public c(Lorg/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lorg/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return-void
.end method

.method public getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/impl/dtd/DTDGrammar;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    check-cast p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;

    return-object p0
.end method

.method public putGrammar(Lorg/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
