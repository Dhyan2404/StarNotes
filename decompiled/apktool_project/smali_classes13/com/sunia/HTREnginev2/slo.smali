.class public final Lcom/sunia/HTREnginev2/slo;
.super Lcom/sunia/HTREnginev2/k5;
.source "SourceFile"


# instance fields
.field public final b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field public final c:Z


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/slo;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k5;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/slo;->b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/slo;->c:Z

    return-void
.end method


# virtual methods
.method public getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/slo;->b:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object p0
.end method

.method public isFullyComposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/slo;->c:Z

    return p0
.end method
