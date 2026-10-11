.class public Lnet/sf/saxon/pattern/PatternParser;
.super Lnet/sf/saxon/expr/parser/XPathParser;
.source "SourceFile"


# instance fields
.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/XPathParser;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    return-void
.end method


# virtual methods
.method public final C(Lnet/sf/saxon/expr/Expression;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v0, :cond_0

    const-string v0, "A predicatePattern can appear only at the outermost level (union operator not allowed)"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/PatternParser;->C(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/PatternParser;->C(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/PatternParser;->C(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    return-void
.end method

.method public final D(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final E(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "^(type|record|map|array|union|atomic)\\s*\\(.+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public customizeTokenizer(Lnet/sf/saxon/expr/parser/Tokenizer;)V
    .locals 0

    return-void
.end method

.method public makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method

.method public parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eq v1, v2, :cond_b

    const/16 v2, 0x23

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x45

    if-eq v1, v2, :cond_1

    const/16 v0, 0xca

    if-eq v1, v0, :cond_8

    const/16 v0, 0xce

    if-eq v1, v0, :cond_8

    const/16 v0, 0xd1

    if-eq v1, v0, :cond_8

    const/16 v0, 0xd9

    if-eq v1, v0, :cond_8

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "union"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "tuple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "atomic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseTypePattern(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_8
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Token "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not allowed here in an XSLT pattern"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v3

    :cond_9
    if-nez p1, :cond_a

    const-string v0, "In an XSLT pattern, a function call is allowed only as the first step in a path"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_a
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez p1, :cond_c

    const-string p1, "In an XSLT 3.0 pattern, a variable reference is allowed only as the first step in a path"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v3

    :cond_c
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x53e329d5 -> :sswitch_5
        0x1a55c -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x58c7259 -> :sswitch_2
        0x69987c8 -> :sswitch_1
        0x6a456cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseExpression()Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    if-lez v1, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    const/4 v2, 0x4

    const/16 v3, 0x45

    if-eqz v1, :cond_3

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v3, :cond_3

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v4, "record"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v4, "map"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v4, "array"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/pattern/ItemTypePattern;

    invoke-direct {v3, v1}, Lnet/sf/saxon/pattern/ItemTypePattern;-><init>(Lnet/sf/saxon/type/ItemType;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePredicate(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-eqz v1, :cond_7

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, "atomic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v3, 0xcc

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown atomic type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    check-cast v3, Lnet/sf/saxon/type/AtomicType;

    new-instance v1, Lnet/sf/saxon/pattern/ItemTypePattern;

    invoke-direct {v1, v3}, Lnet/sf/saxon/pattern/ItemTypePattern;-><init>(Lnet/sf/saxon/type/ItemType;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    :goto_1
    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v3, v2, :cond_6

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePredicate(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePathExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBinaryExpression(Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseFunctionArgument()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    if-lez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionArgument()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0xca

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_1

    const-string v0, "A function argument in an XSLT pattern must be a variable reference or literal"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNumericLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStringLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseVariableReference()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseFunctionCall(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionCall(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget v0, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    if-gtz v0, :cond_0

    const-class v0, Lnet/sf/saxon/functions/SuperId;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lnet/sf/saxon/functions/KeyFn;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lnet/sf/saxon/functions/Doc;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lnet/sf/saxon/functions/Root_1;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " function is not allowed at the head of a pattern"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public parsePattern(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/pattern/Pattern;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iput v4, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    invoke-virtual {v2, v1, v5, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    sget-object v6, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v2, v6}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v2

    const/16 v7, 0x28

    const/4 v8, 0x1

    if-nez v2, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v2

    if-ne v2, v7, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v8

    :goto_1
    iput-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    invoke-virtual {p0, v1}, Lnet/sf/saxon/pattern/PatternParser;->D(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1, v5, v5, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/pattern/Pattern;

    return-object p1

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v0, :cond_4

    new-instance p0, Lnet/sf/saxon/pattern/UniversalPattern;

    invoke-direct {p0}, Lnet/sf/saxon/pattern/UniversalPattern;-><init>()V

    return-object p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/expr/FilterExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_2
    instance-of v3, p1, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v3, :cond_9

    check-cast p1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FilterExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v6

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v4

    sget-object v6, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v4, v6, :cond_7

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    const/16 v7, 0x32

    if-eq v4, v6, :cond_6

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v4, v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v4}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    new-instance v6, Lnet/sf/saxon/om/StructuredQName;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "v"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vv"

    const-string v11, "http://saxon.sf.net/generated-variable"

    invoke-direct {v6, v10, v11, v9}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v6, Lnet/sf/saxon/expr/InstanceOfExpression;

    new-instance v9, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v9, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->SINGLE_NUMERIC:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v6, v9, v10}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v9, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v9, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v9, v10, v1, v5}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    new-instance v10, Lnet/sf/saxon/expr/ValueComparison;

    sget-object v11, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    invoke-static {v11}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v11

    invoke-direct {v10, v9, v7, v11}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    new-instance v7, Lnet/sf/saxon/expr/instruct/Choose;

    new-array v9, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object v6, v9, v5

    sget-object v6, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v6}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v6

    aput-object v6, v9, v8

    new-array v6, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object v10, v6, v5

    new-instance v10, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v10, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    aput-object v10, v6, v8

    invoke-direct {v7, v9, v6}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4, v7}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v4, Lnet/sf/saxon/expr/ValueComparison;

    sget-object v6, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    invoke-static {v6}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v6

    invoke-direct {v4, v3, v7, v6}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    :goto_4
    move-object v3, v4

    :cond_7
    if-nez v0, :cond_8

    move-object v0, v3

    goto/16 :goto_2

    :cond_8
    new-instance v4, Lnet/sf/saxon/expr/AndExpression;

    invoke-direct {v4, v3, v0}, Lnet/sf/saxon/expr/AndExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v0, v4

    goto/16 :goto_2

    :cond_9
    instance-of p1, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz p1, :cond_a

    new-instance p0, Lnet/sf/saxon/pattern/BooleanExpressionPattern;

    invoke-direct {p0, v0}, Lnet/sf/saxon/pattern/BooleanExpressionPattern;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_a
    const-string p1, "Pattern starting with \'.\' must be followed by a sequence of predicates"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v1

    :cond_b
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/PatternParser;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    if-nez v1, :cond_c

    new-instance v1, Lnet/sf/saxon/om/QNameParser;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    iget v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    if-lt v2, v4, :cond_c

    invoke-virtual {v1, v8}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    :cond_c
    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v1

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2, v6}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    if-ne p2, v7, :cond_d

    goto :goto_5

    :cond_d
    move v8, v5

    :cond_e
    :goto_5
    iput-boolean v8, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p2, p1, v5, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/pattern/ItemTypePattern;

    invoke-direct {p2, p1}, Lnet/sf/saxon/pattern/ItemTypePattern;-><init>(Lnet/sf/saxon/type/ItemType;)V

    :goto_7
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/PatternParser;->parsePredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    invoke-direct {v0, p2, p1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    move-object p2, v0

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    return-object p2

    :cond_10
    invoke-virtual {p0, p1, v5, v5, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    instance-of v1, v0, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/pattern/PatternParser;->C(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/pattern/PatternParser;->C(Lnet/sf/saxon/expr/Expression;)V

    :cond_11
    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->setOptimizeForPatternMatching(Z)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v3

    :try_start_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-static {v1, v3, v8}, Lnet/sf/saxon/pattern/PatternMaker;->fromExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-static {v1, p2, v8}, Lnet/sf/saxon/pattern/PatternMaker;->fromExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    :goto_8
    invoke-virtual {p2, p1}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    instance-of v1, p2, Lnet/sf/saxon/pattern/UnionPattern;

    if-eqz v1, :cond_12

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-ne v3, v2, :cond_12

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/pattern/UnionPattern;

    iget-object v3, v2, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    iget-object v2, v2, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    aget-object v1, v1, v8

    invoke-virtual {v2, v1}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    :cond_12
    instance-of v1, v0, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v1, :cond_14

    check-cast v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getBase()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-eqz v0, :cond_13

    const-string v0, "tuple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "array"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "union"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_9

    :cond_13
    const-string p1, "A predicatePattern can appear only at the outermost level (parentheses not allowed)"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_14
    :goto_9
    if-eqz v1, :cond_15

    instance-of p0, p2, Lnet/sf/saxon/pattern/NodeTestPattern;

    if-eqz p0, :cond_15

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/pattern/Pattern;->setPriority(D)V

    :cond_15
    return-object p2
.end method

.method public parsePredicate()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-boolean v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->disallowUnionKeyword:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->disallowUnionKeyword:Z

    iget v0, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/PatternParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget v2, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iput-boolean v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->disallowUnionKeyword:Z

    return-object v0
.end method

.method public testPermittedAxis(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->testPermittedAxis(ILjava/lang/String;)V

    iget p2, p0, Lnet/sf/saxon/pattern/PatternParser;->g:I

    if-nez p2, :cond_0

    sget-object p2, Lnet/sf/saxon/om/AxisInfo;->isSubtreeAxis:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed in a pattern"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
