.class public Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

.field public b:[Lorg/apache/xerces/xni/grammars/Grammar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xerces/impl/xs/traversers/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->a:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public lockPool()V
    .locals 0

    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->a:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 5

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->a:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    aput-object v0, p1, v1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    array-length v2, p1

    add-int/2addr v2, v0

    new-array v3, v2, [Lorg/apache/xerces/xni/grammars/Grammar;

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v0

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lorg/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    aput-object p1, v3, v2

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$b;->b:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-object p0

    :cond_4
    new-array p0, v1, [Lorg/apache/xerces/xni/grammars/Grammar;

    return-object p0
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
