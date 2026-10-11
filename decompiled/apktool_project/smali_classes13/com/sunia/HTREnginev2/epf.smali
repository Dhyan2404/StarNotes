.class public final Lcom/sunia/HTREnginev2/epf;
.super Lcom/sunia/HTREnginev2/k5;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# static fields
.field public static final b:[Lorg/apache/xerces/xni/grammars/Grammar;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lcom/sunia/HTREnginev2/epf;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k5;-><init>()V

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
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    sget-object p0, Lcom/sunia/HTREnginev2/epf;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-object p0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
