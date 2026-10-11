.class public Lnet/sf/saxon/expr/parser/ParserExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;
    }
.end annotation


# static fields
.field public static final synthetic a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Function;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    check-cast p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {p0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->getFunctionReference()Lnet/sf/saxon/functions/hof/UserFunctionReference;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    invoke-direct {p0, p1}, Lnet/sf/saxon/functions/hof/FunctionLiteral;-><init>(Lnet/sf/saxon/om/Function;)V

    return-object p0
.end method

.method public static curryFunction(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p2}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/sf/saxon/functions/hof/PartialApply;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/functions/hof/PartialApply;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p2
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " require support for Saxon extensions, available in Saxon-PE or higher"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-void
.end method

.method public bindNumericParameterReference(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Underscore functions"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requires support for XQuery Update, available in Saxon-EE or higher"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-void
.end method

.method public createDynamicCurriedFunction(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/expr/Expression;Ljava/util/ArrayList;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/XPathParser;",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;",
            "Lnet/sf/saxon/z/IntSet;",
            ")",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Expression;

    invoke-static {p2, p0, p4}, Lnet/sf/saxon/expr/parser/ParserExtension;->curryFunction(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object p2

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object p0
.end method

.method public handleExternalFunctionDeclaration(Lnet/sf/saxon/query/XQueryParser;Lnet/sf/saxon/query/XQueryFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p2, "External function declarations"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/ParserExtension;->b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    return-void
.end method

.method public makeCurriedFunction(Lnet/sf/saxon/expr/parser/XPathParser;ILnet/sf/saxon/om/StructuredQName;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName$F;

    array-length v2, p4

    invoke-direct {v1, p3, v2}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-interface {v0, v1, p0}, Lnet/sf/saxon/functions/FunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, p3, p4, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->reportMissingFunction(ILnet/sf/saxon/om/StructuredQName;[Lnet/sf/saxon/expr/Expression;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p3, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->a(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Function;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-static {p0, p4, p5}, Lnet/sf/saxon/expr/parser/ParserExtension;->curryFunction(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseDotFunction(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Dot functions"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseExtendedExprSingle(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseExtendedItemType(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/type/ItemType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseForMemberExpression(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseFunctionItemType(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/ItemType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xcf

    const/16 v3, 0xcc

    if-eq v1, v2, :cond_6

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \',\' or \')\' after function argument type, found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v4, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0x47

    if-ne p0, v1, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/value/SequenceType;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/value/SequenceType;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v0, p1, p0, p2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/query/AnnotationList;)V

    return-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_5

    const-string p0, "Result type must be given if an argument type is given: expected \'as (type)\'"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object p2

    :cond_5
    const-string p0, "function() is no longer allowed for a general function type: must be function(*)"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object p2

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p2}, Lnet/sf/saxon/query/AnnotationList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;-><init>(Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/Configuration;)V

    return-object p0
.end method

.method public parseNamedFunctionReference(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "XPST0017"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v4, 0xd1

    invoke-virtual {p1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/value/NumericValue;->parseNumber(Ljava/lang/String;)Lnet/sf/saxon/value/NumericValue;

    move-result-object v0

    instance-of v4, v0, Lnet/sf/saxon/value/IntegerValue;

    if-nez v4, :cond_0

    const-string v4, "Number following \'#\' must be an integer"

    invoke-virtual {p1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v4

    if-ltz v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    const-string v4, "Number following \'#\' is out of range"

    const-string v5, "FOAR0002"

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v5

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/expr/parser/XPathParser;->isReservedFunctionName31(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The unprefixed function name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' is reserved in XPath 3.1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v1, v4

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v5

    new-instance v6, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v6, v1, v0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-interface {v5, v6, v3}, Lnet/sf/saxon/functions/FunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Function "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    const-string p0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v1, p0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    instance-of p0, v4, Lnet/sf/saxon/functions/SystemFunction;

    if-eqz p0, :cond_5

    move-object p0, v4

    check-cast p0, Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    if-eqz p0, :cond_5

    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    and-int/lit16 p0, p0, 0x583c

    if-eqz p0, :cond_5

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    move-result-object p0

    const-string p1, "function-lookup"

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    new-array p1, v2, [Lnet/sf/saxon/expr/Expression;

    new-instance v2, Lnet/sf/saxon/value/QNameValue;

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v2, v1, v3}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    int-to-long v0, v0

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v1, v4}, Lnet/sf/saxon/expr/parser/ParserExtension;->a(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Function;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object p0
.end method

.method public parseRevalidationDeclaration(Lnet/sf/saxon/query/XQueryParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "A revalidation declaration"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->c(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    return-void
.end method

.method public parseTypeAliasDeclaration(Lnet/sf/saxon/query/XQueryParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Type alias declarations"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    return-void
.end method

.method public parseTypePattern(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "type-based patterns"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseUnderscoreFunction(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Underscore functions"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->b(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseUpdatingFunctionDeclaration(Lnet/sf/saxon/query/XQueryParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "An updating function"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ParserExtension;->c(Lnet/sf/saxon/expr/parser/XPathParser;Ljava/lang/String;)V

    return-void
.end method
