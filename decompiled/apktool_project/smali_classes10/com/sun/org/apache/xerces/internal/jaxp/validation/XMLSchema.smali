.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchema;
.super Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;
.source "SourceFile"


# instance fields
.field private final fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchema;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public getGrammarPool()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchema;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-object p0
.end method

.method public isFullyComposed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
