.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;
.super Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# static fields
.field private static EMPTY_XML_SCHEMA_INSTANCE:Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;

.field private static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;->EMPTY_XML_SCHEMA_INSTANCE:Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    sput-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/AbstractXMLSchema;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;->EMPTY_XML_SCHEMA_INSTANCE:Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;

    return-object v0
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
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    return-object p0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
