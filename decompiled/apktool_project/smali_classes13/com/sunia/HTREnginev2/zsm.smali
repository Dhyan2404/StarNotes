.class public final Lcom/sunia/HTREnginev2/zsm;
.super Lcom/sunia/HTREnginev2/k5;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# static fields
.field public static final e:[Lorg/apache/xerces/xni/grammars/Grammar;


# instance fields
.field public final b:Lorg/apache/xerces/xni/grammars/Grammar;

.field public final c:[Lorg/apache/xerces/xni/grammars/Grammar;

.field public final d:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lcom/sunia/HTREnginev2/zsm;->e:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k5;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zsm;->b:Lorg/apache/xerces/xni/grammars/Grammar;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sunia/HTREnginev2/zsm;->c:[Lorg/apache/xerces/xni/grammars/Grammar;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zsm;->d:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 0

    return-object p0
.end method

.method public isFullyComposed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public lockPool()V
    .locals 0

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zsm;->d:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zsm;->b:Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 1

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zsm;->c:[Lorg/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sunia/HTREnginev2/zsm;->e:[Lorg/apache/xerces/xni/grammars/Grammar;

    :goto_0
    return-object p0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
