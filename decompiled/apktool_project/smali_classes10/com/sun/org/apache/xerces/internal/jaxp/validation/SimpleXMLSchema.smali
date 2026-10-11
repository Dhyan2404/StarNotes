.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;
.super Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# static fields
.field private static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;


# instance fields
.field private fGrammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

.field private fGrammarDescription:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

.field private fGrammars:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    sput-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->fGrammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->fGrammars:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;->getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getGrammarPool()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
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

.method public retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->fGrammarDescription:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->fGrammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->fGrammars:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    invoke-virtual {p0}, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    check-cast p0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    :goto_0
    return-object p0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
