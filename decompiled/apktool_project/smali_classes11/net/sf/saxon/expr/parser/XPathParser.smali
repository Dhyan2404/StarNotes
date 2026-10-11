.class public Lnet/sf/saxon/expr/parser/XPathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;,
        Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;,
        Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;,
        Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final synthetic f:Z


# instance fields
.field public a:Z

.field protected allowSaxonExtensions:Z

.field protected allowXPath30Syntax:Z

.field protected allowXPath30XSLTExtensions:Z

.field protected allowXPath31Syntax:Z

.field protected allowXPath40Syntax:Z

.field public b:Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;

.field public c:Lnet/sf/saxon/s9api/Location;

.field protected catchDepth:I

.field protected charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

.field protected codeInjector:Lnet/sf/saxon/expr/parser/CodeInjector;

.field protected env:Lnet/sf/saxon/expr/StaticContext;

.field public inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

.field protected languageVersion:I

.field protected parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

.field protected qNameParser:Lnet/sf/saxon/om/QNameParser;

.field protected rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected scanOnly:Z

.field protected t:Lnet/sf/saxon/expr/parser/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "attribute"

    const-string v1, "comment"

    const-string v2, "document-node"

    const-string v3, "element"

    const-string v4, "empty-sequence"

    const-string v5, "function"

    const-string v6, "if"

    const-string v7, "item"

    const-string v8, "namespace-node"

    const-string v9, "node"

    const-string v10, "processing-instruction"

    const-string v11, "schema-attribute"

    const-string v12, "schema-element"

    const-string v13, "switch"

    const-string v14, "text"

    const-string v15, "typeswitch"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/parser/XPathParser;->d:[Ljava/lang/String;

    const-string v1, "array"

    const-string v2, "attribute"

    const-string v3, "comment"

    const-string v4, "document-node"

    const-string v5, "element"

    const-string v6, "empty-sequence"

    const-string v7, "function"

    const-string v8, "if"

    const-string v9, "item"

    const-string v10, "map"

    const-string v11, "namespace-node"

    const-string v12, "node"

    const-string v13, "processing-instruction"

    const-string v14, "schema-attribute"

    const-string v15, "schema-element"

    const-string v16, "switch"

    const-string v17, "text"

    const-string v18, "typeswitch"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/parser/XPathParser;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v0}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    new-instance v0, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v0}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;

    new-instance v0, Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/ParserExtension;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30XSLTExtensions:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowSaxonExtensions:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->codeInjector:Lnet/sf/saxon/expr/parser/CodeInjector;

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->b:Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;

    sget-object v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XPATH:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const/16 v1, 0x14

    iput v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public static b(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;I)Lnet/sf/saxon/expr/LocalBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;",
            ">;I)",
            "Lnet/sf/saxon/expr/LocalBinding;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    move-object v4, v1

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-gt v3, v5, :cond_4

    invoke-virtual {p1, v3}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    iget-object v8, v5, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    if-ge v7, v8, :cond_2

    iget-object v8, v5, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_1

    iget-object v4, v5, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/LocalBinding;

    move v6, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v6, :cond_3

    iget-object v4, v5, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object v5, v5, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_0

    return-object v4

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Reflexive calls to external .NET methods are not available under Saxon-HE"

    return-object p0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Reflexive calls to external .NET methods require a Saxon-PE or Saxon-EE license, and none was found"

    return-object p0

    :cond_1
    const-string p0, "For diagnostics on calls to .NET methods, use the -TJ command line option or call processor.SetProperty(\"http://saxon.sf.net/feature/trace-external-functions\", \"true\")"

    return-object p0
.end method

.method public static e(Lnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Reflexive calls to Java methods are not available under Saxon-HE"

    return-object p0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Reflexive calls to Java methods require a Saxon-PE or Saxon-EE license, and none was found"

    return-object p0

    :cond_1
    const-string p0, "For diagnostics on calls to Java methods, use the -TJ command line option or set the Configuration property FeatureKeys.TRACE_EXTERNAL_FUNCTIONS"

    return-object p0
.end method

.method public static f(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;)Lnet/sf/saxon/expr/LocalBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;",
            ">;)",
            "Lnet/sf/saxon/expr/LocalBinding;"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_7

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {v2, v3}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v4}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    iget-object v6, v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_1

    iget-object v6, v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_0

    iget-object v3, v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lnet/sf/saxon/expr/LocalBinding;

    move v3, v1

    goto :goto_4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    if-nez v3, :cond_2

    iget-object v3, v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v3}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-interface {v4}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->b(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;I)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findOuterRangeVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/LocalBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;",
            ">;",
            "Lnet/sf/saxon/expr/StaticContext;",
            ")",
            "Lnet/sf/saxon/expr/LocalBinding;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->f(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, p2, Lnet/sf/saxon/style/ExpressionContext;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/IndexedStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->g(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static g(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/LocalBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;",
            ">;",
            "Lnet/sf/saxon/expr/StaticContext;",
            ")",
            "Lnet/sf/saxon/expr/LocalBinding;"
        }
    .end annotation

    check-cast p2, Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {p2}, Lnet/sf/saxon/style/ExpressionContext;->getStyleElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p2

    invoke-virtual {p2, p0}, Lnet/sf/saxon/style/StyleElement;->bindLocalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    move v2, v0

    :goto_0
    iget-object v3, v1, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, v1, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v3}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    new-instance v3, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;

    invoke-direct {v3, p2}, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;-><init>(Lnet/sf/saxon/style/SourceBinding;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p2, v4}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object p2, v1, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->b(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;I)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMissingFunctionExplanation(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/lib/NamespaceConstant;->findSimilarNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "http://saxon.sf.net/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Saxon extension functions are not available under Saxon-HE"

    return-object p0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "Saxon extension functions require a Saxon-PE or Saxon-EE license"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string p1, "original"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Function name xsl:original is only available within an overriding function"

    return-object p0

    :cond_3
    const-string p0, "There are no functions defined in the XSLT namespace"

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Perhaps the intended namespace was \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "java"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->e(Lnet/sf/saxon/Configuration;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "clitype:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->d(Lnet/sf/saxon/Configuration;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isReservedFunctionName30(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser;->d:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isReservedFunctionName31(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser;->e:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/LookupExpression;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/LookupExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public static makeInlineFunctionValue(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;Ljava/util/List;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/XPathParser;",
            "Lnet/sf/saxon/query/AnnotationList;",
            "Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/UserFunctionParameter;",
            ">;",
            "Lnet/sf/saxon/value/SequenceType;",
            "Lnet/sf/saxon/expr/Expression;",
            ")",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;-><init>()V

    new-instance v2, Lnet/sf/saxon/om/StructuredQName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "anon"

    const-string v5, "http://ns.saxonica.com/anonymous-type"

    invoke-direct {v2, v4, v5, v3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {v1, p5}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V

    invoke-virtual {v1, p4}, Lnet/sf/saxon/expr/instruct/UserFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->incrementReferenceCount()V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/StylesheetPackage;

    sget-object p4, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    sget-object v2, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-static {v1, p4, v2, p1, p1}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaringComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_0
    iget-object p1, p2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    const/4 v2, 0x0

    if-nez p4, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p4

    new-array p4, v3, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move v4, v2

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    aput-object v5, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    add-int/lit8 v6, p3, 0x1

    aput-object v5, p4, p3

    move p3, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p4}, Lnet/sf/saxon/expr/instruct/UserFunction;->setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    move p3, v2

    :goto_2
    if-ge p3, v3, :cond_3

    aget-object v4, p4, p3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    move-result v4

    aget-object v5, p4, p3

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p5, v3, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    new-instance p0, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-direct {p0, v1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    new-array p3, v3, [Lnet/sf/saxon/expr/Expression;

    move p4, v2

    :goto_3
    const/4 p5, 0x0

    if-ge p4, v0, :cond_4

    aput-object p5, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    move p4, v2

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p4, v3, :cond_6

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    iget-object v4, p2, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/LocalBinding;

    instance-of v5, v4, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;

    if-eqz v5, :cond_5

    new-instance v5, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v5, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    move-object v6, v4

    check-cast v6, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;

    iget-object v6, v6, Lnet/sf/saxon/expr/parser/ParserExtension$TemporaryXSLTVariableBinding;->e:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v6, v5}, Lnet/sf/saxon/style/SourceBinding;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    goto :goto_5

    :cond_5
    new-instance v5, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v5, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    :goto_5
    invoke-interface {v4}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-virtual {v5, v6, p5, v2}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    invoke-interface {v4}, Lnet/sf/saxon/expr/Binding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    add-int v3, p4, v0

    aput-object v5, p3, v3

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_6
    new-instance p1, Lnet/sf/saxon/functions/hof/PartialApply;

    invoke-direct {p1, p0, p3}, Lnet/sf/saxon/functions/hof/PartialApply;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    goto :goto_7

    :cond_7
    new-array p1, v2, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    array-length p2, p1

    :goto_6
    if-ge v2, p2, :cond_8

    aget-object p4, p1, v2

    invoke-virtual {p4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p4

    invoke-virtual {p0, p4}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p5, p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    new-instance p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-direct {p1, v1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    :goto_7
    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz p0, :cond_9

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StylesheetPackage;->addComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_9
    return-object p1
.end method

.method public static n(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/LookupAllExpression;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/LookupAllExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public static operatorPrecedence(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v1, 0x4d

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x26

    if-eq p0, v1, :cond_3

    const/16 v1, 0x27

    if-eq p0, v1, :cond_3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0x12

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0xe

    return p0

    :pswitch_8
    const/16 p0, 0xb

    return p0

    :pswitch_9
    const/16 p0, 0xa

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 p0, 0x13

    return p0

    :cond_3
    :pswitch_c
    return v0

    :cond_4
    const/16 p0, 0xd

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_c
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_8
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method public static whyDisallowedType(Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/type/BuiltInAtomicType;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isAllowedInXSD10()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXsdVersion()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The built-in atomic type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not recognized unless XSD 1.1 is enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final B()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    const/16 v0, 0xda

    if-eq v1, v0, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseValidateExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExtensionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseValidateExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "goto default;"

    invoke-static {v0}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSimpleMappingExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->B()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0x12b

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->t(ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->B()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->t(ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public atStartOfRelativePath()Z
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0xda

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_1

    const/16 v2, 0x45

    if-eq v1, v2, :cond_1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return v2

    :pswitch_0
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "ordered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v0, "unordered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    :pswitch_1
    return v3

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcd
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/type/BuiltInAtomicType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->whyDisallowedType(Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/type/BuiltInAtomicType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "XPST0080"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkLanguageVersion30()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "To use XPath 3.0 syntax, you must configure the XPath parser to handle it"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkLanguageVersion31()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "The XPath parser is not configured to allow use of XPath 3.1 syntax"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkLanguageVersion40()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "The XPath parser is not configured to allow use of XPath 4.0 syntax"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkMapExtensions()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30XSLTExtensions:Z

    if-nez v0, :cond_0

    const-string v0, "The XPath parser is not configured to allow use of the map syntax from XSLT 3.0 or XPath 3.1"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkSyntaxExtensions(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saxon XPath syntax extensions have not been enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public currentTokenDisplay()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xc9

    const/16 v2, 0x22

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string p0, "(unknown token)"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public customizeTokenizer(Lnet/sf/saxon/expr/parser/Tokenizer;)V
    .locals 0

    return-void
.end method

.method public declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public disallowedAtStartOfRelativePath()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v0, 0x39

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public expect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findOuterRangeVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/LocalBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->findOuterRangeVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object p0

    return-object p0
.end method

.method public findRangeVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/LocalBinding;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v1}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->findOuterRangeVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object p0

    return-object p0
.end method

.method public generateApplyCall(Lnet/sf/saxon/expr/Expression;Ljava/util/ArrayList;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-direct {v0, p2}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;-><init>(Ljava/util/List;)V

    new-instance p2, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    invoke-direct {p2, v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v1

    const-string v2, "apply"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    new-array p2, v3, [Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const/4 v2, 0x1

    aput-object v0, p2, v2

    invoke-virtual {v1, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast v1, Lnet/sf/saxon/functions/ApplyFn;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/functions/ApplyFn;->setDynamicFunctionCall(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object p2
.end method

.method public getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->codeInjector:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$a;->a:[I

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "XPath"

    return-object p0

    :cond_0
    const-string p0, "Extended ItemType"

    return-object p0

    :cond_1
    const-string p0, "XQuery"

    return-object p0

    :cond_2
    const-string p0, "SequenceType"

    return-object p0

    :cond_3
    const-string p0, "XSLT Pattern"

    return-object p0
.end method

.method public getPlainType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Unknown atomic type "

    const-string v6, "XPST0051"

    if-eqz v4, :cond_4

    invoke-static {v1, v2}, Lnet/sf/saxon/type/Type;->getBuiltInItemType(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->c(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/type/BuiltInAtomicType;)V

    return-object p1

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not atomic"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "http://saxon.sf.net/java-type"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_0
    invoke-static {v2}, Lnet/sf/saxon/type/JavaExternalObjectType;->localNameToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/Configuration;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getJavaExternalObjectType(Ljava/lang/Class;)Lnet/sf/saxon/type/JavaExternalObjectType;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Java class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v4, "http://saxon.sf.net/clitype"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object p0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {p0, v0, v1, v2}, Lnet/sf/saxon/Platform;->getExternalObjectType(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ExternalObjectType;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown simple type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_7
    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v0

    const-string v2, " exists, but its schema definition has not been imported"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0, v1}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Atomic type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    return-object p1

    :cond_9
    instance-of v0, p1, Lnet/sf/saxon/type/ItemType;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/ItemType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-eqz v4, :cond_b

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p1, v1}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0

    :cond_b
    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v0

    const-string v1, "Type ("

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is a complex type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_c
    check-cast p1, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->isListType()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is a list type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_d
    iget-boolean p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is a union type that cannot be used as an item type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The union type ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") cannot be used as an item type unless XPath 3.0 is enabled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getQNameParser()Lnet/sf/saxon/om/QNameParser;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    return-object p0
.end method

.method public getRangeVariables()Lnet/sf/saxon/tree/util/IndexedStack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    return-object p0
.end method

.method public getStaticContext()Lnet/sf/saxon/expr/StaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    return-object p0
.end method

.method public getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    return-object p0
.end method

.method public grumble(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v0, v1, :cond_0

    const-string v0, "XTSE0340"

    goto :goto_0

    :cond_0
    const-string v0, "XPST0003"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public grumble(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-direct {v0, v1, v2, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;I)V

    return-void
.end method

.method public grumble(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-direct {v0, v1, v2, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;I)V

    return-void
.end method

.method public grumble(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XPST0003"

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "err"

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->g(I)Ljava/lang/String;

    move-result-object v1

    if-ne p3, v2, :cond_1

    .line 7
    iget-object p3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber()I

    move-result v2

    .line 8
    iget-object p3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber()I

    move-result p3

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2, p3}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber(I)I

    move-result v2

    .line 10
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v3, p3}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber(I)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move p3, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {p0, v3, v2, p3, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNestedLocation(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)Lnet/sf/saxon/s9api/Location;

    move-result-object p3

    .line 12
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p3}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 14
    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/XPathException;->setIsSyntaxError(Z)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 18
    throw v1
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->operatorPrecedence(I)I

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getPlainType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAllowAbsentExpression()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->a:Z

    return p0
.end method

.method public isAllowXPath31Syntax()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    return p0
.end method

.method public isKeyword(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNamespaceTestAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    return p0
.end method

.method public isReservedInQuery(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/lib/NamespaceConstant;->isReservedInQuery31(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/String;)Lnet/sf/saxon/type/CastingTarget;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "XQST0052"

    const-string v4, "Unknown simple type "

    const-string v5, "XPST0051"

    if-eqz v2, :cond_5

    invoke-static {v1, v0}, Lnet/sf/saxon/type/Type;->getBuiltInSimpleType(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of p1, v0, Lnet/sf/saxon/type/CastingTarget;

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuitable type for cast: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XPST0080"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    check-cast v0, Lnet/sf/saxon/type/CastingTarget;

    instance-of p1, v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->c(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/type/BuiltInAtomicType;)V

    :cond_4
    return-object v0

    :cond_5
    const-string v2, "http://saxon.sf.net/clitype"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-interface {p1, p0, v1, v0}, Lnet/sf/saxon/Platform;->getExternalObjectType(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ExternalObjectType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    return-object p0

    :cond_6
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    new-instance v6, Lnet/sf/saxon/om/StructuredQName;

    const-string v7, ""

    invoke-direct {v6, v7, v1, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_8
    iget-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    const-string v3, " exists, but its target namespace has not been imported in the static context"

    if-eqz v2, :cond_a

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2, v1}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simple type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_9
    check-cast v0, Lnet/sf/saxon/type/CastingTarget;

    return-object v0

    :cond_a
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2, v1}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atomic type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_b
    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    return-object v0

    :cond_c
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot cast to a complex type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_d
    check-cast v0, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v0}, Lnet/sf/saxon/type/SimpleType;->isListType()Z

    move-result v0

    const-string v1, ") requires XPath 3.0"

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Casting to a list type ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "casting to a union type ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public final k(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "item"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x58

    return p0

    :cond_0
    const-string v0, "document-node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x9

    return p0

    :cond_1
    const-string v0, "element"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "schema-element"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "attribute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "schema-attribute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    const-string v0, "comment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-string v0, "processing-instruction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x7

    return p0

    :cond_8
    const-string v0, "namespace-node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0xd

    return p0

    :cond_9
    const-string v0, "node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final m(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p0, Lnet/sf/saxon/expr/LookupExpression;

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v0, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/expr/LookupExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public makeCurriedFunction(ILnet/sf/saxon/om/StructuredQName;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "Partial function application is not allowed in Saxon-HE"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public final makeFingerprint(Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x182

    return p0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public makeLocalNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/LocalNameTest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local name ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] contains invalid characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/LocalNameTest;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    return-object v0
.end method

.method public makeLocation()Lnet/sf/saxon/s9api/Location;
    .locals 4

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    .line 5
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    .line 6
    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    .line 7
    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    return-object p0

    .line 9
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber()I

    move-result v0

    .line 10
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber()I

    move-result v1

    .line 11
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNestedLocation(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->c:Lnet/sf/saxon/s9api/Location;

    return-object v0
.end method

.method public makeLocation(I)Lnet/sf/saxon/s9api/Location;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber(I)I

    move-result p1

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNestedLocation(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public makeNameTest(SLjava/lang/String;Z)Lnet/sf/saxon/pattern/NodeTest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    const-string v1, ""

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    const-string v2, "Q{"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/XPathParser$a;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, p3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 p3, 0x3

    if-eq v2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p3

    invoke-static {p3}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-direct {p0, v0, p1, p2}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    return-object p0

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v2, p1, p2, v0}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p2, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {p2, p1, p0, v0}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    new-instance p0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-direct {p0, v2, p3, p2}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    return-object p0

    :cond_3
    iget-object p3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p2, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {p2, p1, p0, v0}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    return-object p2
.end method

.method public makeNamespaceTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/NamespaceTest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v1, :cond_0

    new-instance p0, Lnet/sf/saxon/pattern/NamespaceTest;

    const-string p2, "http://saxon.sf.net/"

    invoke-direct {p0, v0, p1, p2}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    return-object p0

    :cond_0
    const-string v1, "Q{"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x2

    sub-int/2addr p0, v1

    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-direct {p2, v0, p1, p0}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    return-object p2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":dummy"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    new-instance v1, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNestedLocation(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)Lnet/sf/saxon/s9api/Location;
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/expr/parser/Loc;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-nez p4, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/parser/Loc;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getSystemId()Ljava/lang/String;

    move-result-object p0

    add-int/2addr p2, v1

    add-int/2addr p3, v1

    invoke-direct {p1, p0, p2, p3}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    return-object p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/expr/parser/XPathParser$NestedLocation;-><init>(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)V

    return-object p0
.end method

.method public final makeNodeName(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeName;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQNameSilently(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p2, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;I)V

    return-object p2

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v0, p2, v1, p1, p0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public makeQNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/QNameTest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p2, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {p2, p1, p0, v0}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    return-object p2
.end method

.method public makeStringLiteral(Ljava/lang/String;)Lnet/sf/saxon/expr/Literal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQNameSilently(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string p1, "error"

    const-string p2, ""

    invoke-direct {p0, p2, p2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final makeStructuredQNameSilently(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v0, :cond_0

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string p1, "http://saxon.sf.net/"

    const-string p2, "dummy"

    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextLocally(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object p1
.end method

.method public nextToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->next()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final o(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_6

    const/16 v1, 0x1d

    if-eq p2, v1, :cond_5

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x26

    if-eq p2, v1, :cond_1

    const/16 v1, 0x27

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    const-string v1, "boolean"

    packed-switch p2, :pswitch_data_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez p2, :cond_0

    const-string p2, "Range operator \'by\' requires XPath 4.0 to be enabled"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p3}, Lnet/sf/saxon/expr/RangeExpression;->makeSteppingExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/RangeExpression;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p2, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    new-array p0, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p3, p0, v2

    invoke-static {v1, p2, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p2, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    new-array p0, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p3, p0, v2

    invoke-static {v1, p2, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/expr/parser/XPathParser;->q(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lnet/sf/saxon/expr/ValueComparison;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/parser/TypeChecker;->makeArithmeticExpression(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Lnet/sf/saxon/expr/AndExpression;

    invoke-direct {p0, p1, p3}, Lnet/sf/saxon/expr/AndExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lnet/sf/saxon/expr/OrExpression;

    invoke-direct {p0, p1, p3}, Lnet/sf/saxon/expr/OrExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_1
    :pswitch_8
    new-instance p0, Lnet/sf/saxon/expr/IdentityComparison;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/IdentityComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_2
    iget-boolean p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez p2, :cond_3

    const-string p2, "Concatenation operator (\'||\') requires XPath 3.0 to be enabled"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const-class p0, Lnet/sf/saxon/functions/Concat;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    const-string v1, "concat"

    if-eqz p0, :cond_4

    check-cast p1, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FunctionCall;->getArguments()[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    array-length v0, p0

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    aput-object p3, p1, p0

    invoke-static {v1, p2, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p0, v2

    aput-object p3, p0, v0

    invoke-static {v1, p2, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lnet/sf/saxon/expr/RangeExpression;

    invoke-direct {p0, p1, p3}, Lnet/sf/saxon/expr/RangeExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_6
    :pswitch_9
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/parser/TypeChecker;->makeGeneralComparison(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    :pswitch_a
    new-instance p0, Lnet/sf/saxon/expr/VennExpression;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Ljava/util/Map;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v4, Lnet/sf/saxon/expr/StringLiteral;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v6

    const-string v7, "entry"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v6

    new-array v7, v8, [Lnet/sf/saxon/expr/Expression;

    aput-object v4, v7, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Expression;

    aput-object v2, v7, v3

    invoke-virtual {v6, v7}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    aput-object v2, p0, v1

    move v1, v5

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object p0

    const-string v1, "merge"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    new-array v1, v3, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v2, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v1, v2, :cond_0

    const/16 v0, 0xa

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->b:Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;

    const/16 v1, 0xd7

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    move-result-object v0

    sget-object v3, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    if-ne v0, v3, :cond_2

    if-eq p3, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_1

    if-ne p3, v1, :cond_2

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v3

    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->b:Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    move-object v6, p4

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;->parse(Lnet/sf/saxon/expr/parser/Tokenizer;Lnet/sf/saxon/expr/StaticContext;Ljava/lang/String;II)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_a

    new-instance v0, Lnet/sf/saxon/om/QNameParser;

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    iget-boolean v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v0

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v4, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v3, v4, :cond_3

    const-string v3, "XTSE0340"

    goto :goto_1

    :cond_3
    const-string v3, "XPST0003"

    :goto_1
    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/QNameParser;->withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v0

    const-string v3, "XPST0081"

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/QNameParser;->withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v3

    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    const/16 v4, 0x28

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->customizeTokenizer(Lnet/sf/saxon/expr/parser/Tokenizer;)V

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0, p1, p2, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne p1, p3, :cond_7

    iget-boolean p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->a:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_6
    const-string p1, "The expression is empty"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq p1, p3, :cond_9

    if-eq p3, v2, :cond_9

    if-nez p1, :cond_8

    if-ne p3, v1, :cond_8

    const-string p1, "Missing curly brace after expression in value template"

    const-string p2, "XTSE0350"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected token "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " beyond end of expression"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_9
    :goto_5
    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    :cond_a
    invoke-interface {p4}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextThoroughly(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0
.end method

.method public parseAnnotationsList()Lnet/sf/saxon/query/AnnotationList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Function annotations are not allowed in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseArrayCurlyConstructor()Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion31()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0xd7

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    sget-object p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->EMPTY_ARRAY:Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object v0

    const-string v3, "_from-sequence"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    new-array v3, v4, [Lnet/sf/saxon/expr/Expression;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0
.end method

.method public parseArrayItemType()Lnet/sf/saxon/type/ItemType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion31()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xcf

    const/16 v2, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    sget-object p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    return-object p0
.end method

.method public parseArraySquareConstructor()Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion31()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-direct {v0, v2}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-direct {v0, v2}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \',\' or \']\', found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseArrowPostfix(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion31()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    const/4 v2, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseVariableReference()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseDynamicFunctionCall(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseParenthesizedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseDynamicFunctionCall(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after \'=>\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionCall(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0xd0

    const/16 v4, 0xcf

    const/16 v5, 0xc9

    const/16 v6, 0x46

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x45

    if-eq v2, v8, :cond_22

    const/4 v10, 0x4

    if-eq v2, v10, :cond_21

    const/4 v11, 0x5

    if-eq v2, v11, :cond_20

    const/16 v12, 0x15

    if-eq v2, v12, :cond_1f

    const/16 v12, 0x2b

    if-eq v2, v12, :cond_1e

    const/16 v12, 0x4e

    if-eq v2, v12, :cond_1d

    const-string v12, "Expected \'(\' or \'{\' after \'->\'"

    const/16 v13, 0x3b

    const/16 v14, 0x53

    if-eq v2, v14, :cond_1a

    const/16 v15, 0x6a

    const-string v10, "function"

    if-eq v2, v15, :cond_15

    const/16 v11, 0xd5

    if-eq v2, v11, :cond_14

    const/16 v11, 0xd9

    if-eq v2, v11, :cond_13

    const/16 v11, 0xde

    const/4 v12, 0x1

    if-eq v2, v11, :cond_12

    const/16 v11, 0x23

    const/4 v13, 0x0

    if-eq v2, v11, :cond_11

    const/16 v11, 0x24

    const-string v14, "Unexpected token "

    if-eq v2, v11, :cond_f

    if-eq v2, v9, :cond_6

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_8

    const/16 v3, 0xca

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at start of expression"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v1, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNumericLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    const/16 v2, 0x9

    invoke-direct {v0, v2, v13}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :pswitch_3
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v7, v3

    goto :goto_1

    :sswitch_0
    const-string v2, "array"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "map"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :sswitch_2
    const-string v2, "fn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_3
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v7, v12

    goto :goto_1

    :sswitch_4
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_1
    packed-switch v7, :pswitch_data_2

    const-string v0, "goto case Saxon.Hej.expr.parser.Token.ELEMENT_QNAME;"

    invoke-static {v0}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseArrayCurlyConstructor()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseMapExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseUnderscoreFunction(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string v0, "The experimental syntax \'.{expr}\' has changed to \'->{expr}"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseDotFunction(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v1, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStringLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseInlineFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "goto case Saxon.Hej.expr.parser.Token.NAME;"

    invoke-static {v0}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_8
    :pswitch_8
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v9, :cond_9

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "attribute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "schema-attribute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v9, :cond_a

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "namespace-node"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "XQST0134"

    const/16 v7, 0x8

    invoke-virtual {v1, v7, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->testPermittedAxis(ILjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v9, :cond_b

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "document-node"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v7, 0xc

    goto :goto_2

    :cond_b
    move v7, v8

    :cond_c
    :goto_2
    invoke-virtual {v1, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNodeTest(S)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    instance-of v2, v0, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v2, :cond_e

    if-ne v7, v8, :cond_d

    sget-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->CHILD_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    goto :goto_3

    :cond_d
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    :cond_e
    :goto_3
    new-instance v2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-direct {v2, v7, v0}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :cond_f
    :try_start_0
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/om/AxisInfo;->getAxisNumber(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_4
    const-string v0, "XPST0003"

    invoke-virtual {v1, v8, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->testPermittedAxis(ILjava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->principalNodeType:[S

    aget-short v0, v0, v8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v2, v9, :cond_10

    if-eq v2, v6, :cond_10

    if-eq v2, v5, :cond_10

    if-eq v2, v4, :cond_10

    if-eq v2, v3, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after axis name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    new-instance v2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNodeTest(S)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v2

    :cond_11
    invoke-virtual {v1, v13}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionCall(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {v1, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStringLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_13
    :goto_5
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseConstructor()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseLookup(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseAnnotationsList()Lnet/sf/saxon/query/AnnotationList;

    move-result-object v0

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const-string v3, "IF"

    if-ne v2, v14, :cond_18

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/query/AnnotationList;->check(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v11, :cond_16

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseInlineFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_16
    if-ne v2, v13, :cond_17

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFocusFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {v1, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_18
    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "Expected \'function\' to follow the annotation assertion"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_19
    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/query/AnnotationList;->check(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseInlineFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v0, v11, :cond_1b

    sget-object v0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseInlineFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1b
    if-ne v0, v13, :cond_1c

    sget-object v0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFocusFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-virtual {v1, v12}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_6

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStringConstructor()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNamedFunctionReference()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseVariableReference()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseParenthesizedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseArraySquareConstructor()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v0, v9, :cond_23

    if-eq v0, v6, :cond_23

    if-eq v0, v5, :cond_23

    if-eq v0, v4, :cond_23

    if-eq v0, v3, :cond_23

    const-string v0, "@ must be followed by a NodeTest"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_6
    new-instance v0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object v0

    :cond_23
    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNodeTest(S)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcd
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_4
        0x5f -> :sswitch_3
        0xcc8 -> :sswitch_2
        0x1a55c -> :sswitch_1
        0x58c7259 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public parseBinaryExpression(Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v0

    if-lt v0, p2, :cond_c

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v2

    const/16 v3, 0x39

    const-string v4, "\' needs parentheses"

    const-string v5, "Left operand of \'"

    if-eq v0, v3, :cond_6

    const/16 v3, 0x4d

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->B()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v6

    if-le v6, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBinaryExpression(Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v6

    if-ne v6, v2, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->a()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v6, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v2, v2, v5

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "<"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ">"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Or perhaps an XQuery element constructor appears where it is not allowed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p1, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->o(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->r(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v0

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseArrowPostfix(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    const/16 v6, 0x28

    if-lt v3, v6, :cond_7

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0x45

    if-ne v6, v7, :cond_7

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v6, "union"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/CastingTarget;

    goto :goto_2

    :cond_7
    const/16 v3, 0xc9

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->j(Ljava/lang/String;)Lnet/sf/saxon/type/CastingTarget;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :goto_2
    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const-string v7, "XPST0080"

    if-ne v3, v6, :cond_8

    const-string v6, "No value is castable to xs:anyAtomicType"

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v3, v6, :cond_9

    const-string v6, "No value is castable to xs:NOTATION"

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0xd5

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_b
    invoke-virtual {p0, p1, v0, v3, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->s(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/CastingTarget;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->h()I

    move-result v0

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseConstructor()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Node constructor expressions are allowed only in XQuery, not in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseDynamicFunctionCall(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion30()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xcc

    const/4 v2, 0x0

    if-eq p2, v1, :cond_6

    :goto_0
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/Tokenizer;->f()I

    move-result p2

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v4, 0xd5

    const/4 v5, 0x7

    if-ne v3, v4, :cond_3

    if-eq p2, v5, :cond_1

    if-ne p2, v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-nez v2, :cond_2

    new-instance v2, Lnet/sf/saxon/z/IntArraySet;

    invoke-direct {v2}, Lnet/sf/saxon/z/IntArraySet;-><init>()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionArgument()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne p2, v5, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_4
    const/16 v3, 0x4c

    if-ne p2, v3, :cond_5

    const-string p2, "Keyword arguments are not allowed in a dynamic function call"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-nez v2, :cond_7

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->generateApplyCall(Lnet/sf/saxon/expr/Expression;Ljava/util/ArrayList;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {p2, p0, p1, v0, v2}, Lnet/sf/saxon/expr/parser/ParserExtension;->createDynamicCurriedFunction(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/expr/Expression;Ljava/util/ArrayList;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseEnumType()Lnet/sf/saxon/type/EnumerationType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    :goto_0
    const/16 v1, 0xca

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance p0, Lnet/sf/saxon/type/EnumerationType;

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/EnumerationType;-><init>(Ljava/util/Set;)V

    return-object p0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \',\' or \')\' after string literal in enum type, found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseExprSingle()Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseExtendedExprSingle(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->f()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_1

    const/16 v2, 0xcb

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x46

    const/4 v3, 0x1

    if-eq v0, v2, :cond_f

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_f

    const/16 v2, 0xca

    if-eq v0, v2, :cond_e

    packed-switch v0, :pswitch_data_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eqz v2, :cond_d

    const/16 v1, 0x25

    if-eq v2, v1, :cond_c

    const/16 v1, 0x3c

    if-eq v2, v1, :cond_8

    const/16 v0, 0xd3

    if-eq v2, v0, :cond_7

    const/16 v0, 0xd8

    if-eq v2, v0, :cond_7

    const/16 v0, 0xda

    if-eq v2, v0, :cond_6

    const/16 v0, 0x20

    if-eq v2, v0, :cond_5

    const/16 v0, 0x21

    if-eq v2, v0, :cond_5

    const/16 v0, 0x41

    if-eq v2, v0, :cond_4

    const/16 v0, 0x42

    if-eq v2, v0, :cond_3

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseValidateExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSwitchExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseTypeswitchExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->x()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExtensionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFLWORExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "try"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseTryCatchExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "goto default;"

    invoke-static {v0}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->B()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBinaryExpression(Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_b

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v1, :cond_a

    const-string v1, "Ternary conditionals (A ?? B !! C) require XPath 4.0 to be enabled"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->A(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->u()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Expected an expression, but reached the end of the input"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v1

    :pswitch_2
    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNumericLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_e
    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStringLiteral(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_f
    :pswitch_5
    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xcd
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseExpression()Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    :cond_2
    return-object v1
.end method

.method public parseExtendedItemType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/ItemType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result p2

    iput p2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowSaxonExtensions:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2, p1, v0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected token "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " beyond end of ItemType"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public parseExtendedSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result p2

    iput p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    iput p2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowSaxonExtensions:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2, p1, v0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected token "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " beyond end of SequenceType"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public parseExtensionExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "extension expressions (#...#) are not allowed in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseFLWORExpression()Lnet/sf/saxon/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "\'let\' is not permitted in XPath 2.0"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x49

    if-ne v0, v2, :cond_2

    :cond_1
    const-string v0, "sliding/tumbling windows can only be used in XQuery"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-nez v0, :cond_3

    const-string v0, "\'for member\' requires XPath 4.0 to be enabled"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    :goto_0
    iget-object v7, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v7, v7, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v8, 0x15

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v8, 0xc9

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v8, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v8, v8, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/16 v9, 0xd3

    if-ne v0, v9, :cond_4

    new-instance v9, Lnet/sf/saxon/expr/ForExpression;

    invoke-direct {v9}, Lnet/sf/saxon/expr/ForExpression;-><init>()V

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v9, v10}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    new-instance v9, Lnet/sf/saxon/expr/ForMemberExpression;

    invoke-direct {v9}, Lnet/sf/saxon/expr/ForMemberExpression;-><init>()V

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v9, v10}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_1

    :cond_5
    new-instance v9, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v9}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v9, v10}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v9, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    const-string v7, ""

    invoke-virtual {p0, v8, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-virtual {v9, v7}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-ne v0, v1, :cond_6

    const/16 v7, 0x3a

    goto :goto_2

    :cond_6
    const/16 v7, 0x1f

    :goto_2
    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v9, v7}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v9}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    if-nez v3, :cond_7

    move-object v5, v9

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v9}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    :goto_3
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v7, 0x7

    if-eq v3, v7, :cond_9

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    :goto_4
    if-ge v4, v6, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->undeclareRangeVariable()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_9
    move-object v3, v9

    goto/16 :goto_0
.end method

.method public parseFocusFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v6, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    invoke-direct {v6}, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;-><init>()V

    new-instance v0, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v0}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object v0, v6, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getRangeVariables()Lnet/sf/saxon/tree/util/IndexedStack;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/util/IndexedStack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/LocalBinding;

    iget-object v2, v6, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v0, v6}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    new-instance v0, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v0}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setRangeVariables(Lnet/sf/saxon/tree/util/IndexedStack;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "dot"

    const-string v5, "saxon"

    invoke-direct {v0, v5, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v1}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v5, 0xd7

    if-ne v2, v5, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    new-instance v2, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    new-instance v1, Lnet/sf/saxon/expr/instruct/ForEach;

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v5, v1

    :goto_1
    sget-object v1, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    move-object v0, p0

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeInlineFunctionValue(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;Ljava/util/List;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    iget-object p1, v6, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setRangeVariables(Lnet/sf/saxon/tree/util/IndexedStack;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    return-object v0
.end method

.method public parseFunctionArgument()Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseFunctionCall(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->resolveFunctionName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p1, p1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v1, 0x0

    const/16 v2, 0xcc

    if-eq p1, v2, :cond_c

    move-object p1, v1

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->f()I

    move-result v3

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v7, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v8, 0xc9

    const/4 v9, 0x7

    if-ne v7, v8, :cond_5

    const/16 v7, 0x4c

    if-eq v3, v7, :cond_1

    const/16 v7, 0x3a

    if-ne v3, v7, :cond_5

    :cond_1
    iget-object v3, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v3}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Name used as argument keyword must be a valid NCName (a space may be missing after \':\')"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate keyword \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'in function arguments"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    const-string v6, "Keyword arguments must not be followed by positional arguments in a function call"

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0xd5

    if-ne v6, v7, :cond_9

    if-eq v3, v9, :cond_7

    if-ne v3, v2, :cond_9

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-nez p1, :cond_8

    new-instance p1, Lnet/sf/saxon/z/IntArraySet;

    invoke-direct {p1}, Lnet/sf/saxon/z/IntArraySet;-><init>()V

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v3, v9, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    if-eqz v1, :cond_b

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->p(Ljava/util/Map;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v7, p1

    goto :goto_4

    :cond_c
    move-object v7, v1

    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz p1, :cond_d

    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object p1, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    return-object p0

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Lnet/sf/saxon/expr/Expression;

    if-eqz v7, :cond_e

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lnet/sf/saxon/expr/parser/ParserExtension;->makeCurriedFunction(Lnet/sf/saxon/expr/parser/XPathParser;ILnet/sf/saxon/om/StructuredQName;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v5, v0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1, p1, v6, v2, v0}, Lnet/sf/saxon/functions/FunctionLibrary;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-virtual {p0, v4, v5, v6, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->reportMissingFunction(ILnet/sf/saxon/om/StructuredQName;[Lnet/sf/saxon/expr/Expression;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v0, v1, :cond_14

    const-class v0, Lnet/sf/saxon/functions/RegexGroup;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_10
    instance-of v0, p1, Lnet/sf/saxon/functions/CurrentGroupCall;

    if-eqz v0, :cond_11

    const-string p1, "The current-group() function cannot be used in a pattern"

    const-string v0, "XTSE1060"

    invoke-virtual {p0, p1, v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :cond_11
    instance-of v0, p1, Lnet/sf/saxon/functions/CurrentGroupingKeyCall;

    if-eqz v0, :cond_12

    const-string p1, "The current-grouping-key() function cannot be used in a pattern"

    const-string v0, "XTSE1070"

    invoke-virtual {p0, p1, v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :cond_12
    const-class v0, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "The current-merge-group() function cannot be used in a pattern"

    const-string v0, "XTSE3470"

    invoke-virtual {p0, p1, v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :cond_13
    const-class v0, Lnet/sf/saxon/functions/CurrentMergeKey;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "The current-merge-key() function cannot be used in a pattern"

    const-string v0, "XTSE3500"

    invoke-virtual {p0, p1, v0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0

    :cond_14
    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    array-length v0, v6

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    aget-object v2, v6, v1

    if-eq p1, v2, :cond_15

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-nez v3, :cond_15

    const-string v3, "http://saxonica.com/ns/globalJS"

    invoke-virtual {v5, v3}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseFunctionItemType(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/ItemType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseFunctionItemType(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public parseInlineFunction(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v7, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;

    invoke-direct {v7}, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;-><init>()V

    new-instance v1, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v1}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object v1, v7, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getRangeVariables()Lnet/sf/saxon/tree/util/IndexedStack;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/tree/util/IndexedStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/LocalBinding;

    iget-object v3, v7, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v7, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariablesUsed:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v7, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->implicitParams:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v1, v7}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    new-instance v1, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v1}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setRangeVariables(Lnet/sf/saxon/tree/util/IndexedStack;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v8, 0x47

    const/16 v9, 0xcc

    if-eq v6, v9, :cond_5

    const/16 v6, 0x15

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v6, 0xc9

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {p0, v6, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate parameter name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v11, v11, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "XQST0039"

    invoke-virtual {p0, v10, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v11, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v11, v11, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v11, v8, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v10

    :cond_2
    new-instance v11, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v11}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    invoke-virtual {v11, v10}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v11, v6}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v11, v5}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v11}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v5, v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x7

    if-ne v5, v8, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected \',\' or \')\' after function argument, found \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v9, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v9, v9, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_2
    move v5, v6

    goto/16 :goto_1

    :cond_5
    :goto_3
    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v6, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v6, v8, :cond_6

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    :cond_6
    move-object v5, v2

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0xd7

    if-ne v2, v6, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->isAllowXPath31Syntax()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :goto_4
    move-object v6, v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-static {v6, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->undeclareRangeVariable()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lnet/sf/saxon/expr/parser/XPathParser;->makeInlineFunctionValue(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/query/AnnotationList;Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;Ljava/util/List;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    iget-object v0, v7, Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;->outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setRangeVariables(Lnet/sf/saxon/tree/util/IndexedStack;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->inlineFunctionStack:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    return-object p1
.end method

.method public parseItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseExtendedItemType(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->z()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public parseLookup(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion31()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    const/4 v2, 0x5

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "The name following \'?\' must be a valid NCName"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->m(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0xd1

    if-ne v3, v4, :cond_3

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/value/NumericValue;->parseNumber(Ljava/lang/String;)Lnet/sf/saxon/value/NumericValue;

    move-result-object v0

    instance-of v2, v0, Lnet/sf/saxon/value/IntegerValue;

    if-nez v2, :cond_2

    const-string v2, "Number following \'?\' must be an integer"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->l(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/16 v4, 0x11

    if-eq v3, v4, :cond_8

    const/16 v4, 0xcf

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    if-ne v3, v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->setState(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseParenthesizedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->l(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/16 v2, 0xca

    if-ne v3, v2, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->m(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_1

    :cond_6
    const/16 v0, 0x15

    if-ne v3, v0, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseVariableReference()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->l(Lnet/sf/saxon/expr/parser/XPathParser;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after \'?\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->n(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object p1
.end method

.method public parseMapExpression()Lnet/sf/saxon/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkMapExtensions()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0xd7

    if-eq v3, v7, :cond_3

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iget v8, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_0

    const-string v8, "The \':=\' notation is no longer accepted in map expressions: use \':\' instead"

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x4c

    invoke-virtual {p0, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    instance-of v9, v3, Lnet/sf/saxon/expr/Literal;

    if-eqz v9, :cond_1

    move-object v9, v3

    check-cast v9, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v10

    instance-of v10, v10, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v10, :cond_1

    instance-of v10, v8, Lnet/sf/saxon/expr/Literal;

    if-eqz v10, :cond_1

    new-instance v3, Lnet/sf/saxon/ma/map/SingleEntryMap;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/value/AtomicValue;

    check-cast v8, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v8}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v8

    invoke-direct {v3, v9, v8}, Lnet/sf/saxon/ma/map/SingleEntryMap;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v9

    const-string v10, "entry"

    invoke-virtual {v9, v10, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v9

    new-array v10, v6, [Lnet/sf/saxon/expr/Expression;

    aput-object v3, v10, v4

    aput-object v8, v10, v5

    invoke-virtual {v9, v10}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v3, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    new-instance v3, Lnet/sf/saxon/expr/instruct/Block;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    new-instance v2, Lnet/sf/saxon/value/StringValue;

    const-string v7, "duplicates"

    invoke-direct {v2, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    new-instance v7, Lnet/sf/saxon/value/StringValue;

    const-string v8, "reject"

    invoke-direct {v7, v8}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    new-instance v2, Lnet/sf/saxon/value/QNameValue;

    const-string v7, "http://saxon.sf.net/"

    const-string v8, "duplicates-error-code"

    const-string v9, ""

    invoke-direct {v2, v9, v7, v8}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lnet/sf/saxon/value/StringValue;

    const-string v8, "XQDY0137"

    invoke-direct {v7, v8}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v2

    const-string v7, "merge"

    invoke-virtual {v2, v7, v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v2

    new-array v6, v6, [Lnet/sf/saxon/expr/Expression;

    aput-object v3, v6, v4

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v2, v6}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :cond_5
    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0
.end method

.method public parseMapItemType()Lnet/sf/saxon/type/ItemType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkMapExtensions()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xcf

    const/16 v2, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    instance-of v2, v0, Lnet/sf/saxon/type/AtomicType;

    if-nez v2, :cond_1

    const-string v0, "Key type of a map must be atomic"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/ma/map/MapType;

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    sget-object p0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    return-object p0
.end method

.method public parseNamedFunctionReference()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->parseNamedFunctionReference(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parseNodeTest(S)Lnet/sf/saxon/pattern/NodeTest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/16 v2, 0x45

    if-eq v1, v2, :cond_5

    const/16 v2, 0x46

    const/16 v3, 0xc9

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_2

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNamespaceTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/NamespaceTest;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Unrecognized node test"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, ""

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {p1}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNameTest(SLjava/lang/String;Z)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocalNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/LocalNameTest;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->v()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    return-object p0
.end method

.method public parseNumericLiteral(Z)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/value/NumericValue;->parseNumber(Ljava/lang/String;)Lnet/sf/saxon/value/NumericValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid numeric literal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public parseOccurrenceIndicator()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xf

    const/16 v3, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd5

    if-eq v1, v2, :cond_0

    const/16 p0, 0x4000

    goto :goto_0

    :cond_0
    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 p0, 0x6000

    goto :goto_0

    :cond_1
    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const p0, 0xe000

    goto :goto_0

    :cond_2
    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const p0, 0xc000

    :goto_0
    return p0
.end method

.method public parseParenthesizedExpression()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0
.end method

.method public parsePathExpression()Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The expression is looking for a child element named \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' - perhaps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "() was intended? To avoid this warning, use child::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or ./"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v2, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-eq v0, v2, :cond_3

    if-gtz v1, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->f()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The keyword \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in this context means \'child::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. If this was intended, use \'child::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' or \'./"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' to avoid this warning."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseRelativePath()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/RootExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/RootExpression;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    new-instance v2, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseRemainingPath(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/expr/RootExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/RootExpression;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->disallowedAtStartOfRelativePath()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not allowed after \'/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->atStartOfRelativePath()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseRemainingPath(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    :cond_7
    return-object v0
.end method

.method public parsePredicate()Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public parsePredicate(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePredicate()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/16 v1, 0xcb

    .line 3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    .line 5
    new-instance v1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 6
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method

.method public parseRelativePath()Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v2, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStepExpression(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    goto :goto_2

    :cond_1
    return-object v1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStepExpression(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-ne v2, v4, :cond_3

    new-instance v2, Lnet/sf/saxon/expr/HomogeneityChecker;

    new-instance v4, Lnet/sf/saxon/expr/SlashExpression;

    invoke-direct {v4, v1, v5}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-direct {v2, v4}, Lnet/sf/saxon/expr/HomogeneityChecker;-><init>(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_3

    :cond_3
    new-instance v2, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v4, 0x5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-static {v1, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/HomogeneityChecker;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/HomogeneityChecker;-><init>(Lnet/sf/saxon/expr/Expression;)V

    :goto_3
    move-object v1, v2

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    goto :goto_1
.end method

.method public parseRemainingPath(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const/4 v1, 0x2

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseStepExpression(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const/16 v4, 0x8

    if-ne v2, v1, :cond_0

    new-instance v2, Lnet/sf/saxon/expr/HomogeneityChecker;

    new-instance v5, Lnet/sf/saxon/expr/SlashExpression;

    invoke-direct {v5, p1, v3}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-direct {v2, v5}, Lnet/sf/saxon/expr/HomogeneityChecker;-><init>(Lnet/sf/saxon/expr/Expression;)V

    :goto_1
    move-object p1, v2

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_1

    new-instance v2, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    new-instance v2, Lnet/sf/saxon/expr/HomogeneityChecker;

    invoke-direct {v2, p1}, Lnet/sf/saxon/expr/HomogeneityChecker;-><init>(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v2, :cond_2

    const-string v2, "XPath \'!\' operator requires XPath 3.0 to be enabled"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lnet/sf/saxon/expr/instruct/ForEach;

    invoke-direct {v2, p1, v3}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v2, v1, :cond_3

    if-eq v2, v4, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_0
.end method

.method public parseSequenceType()Lnet/sf/saxon/value/SequenceType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "empty-sequence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    if-eqz v0, :cond_0

    const/16 p0, 0x2000

    .line 20
    invoke-static {v1, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseOccurrenceIndicator()I

    move-result p0

    .line 22
    invoke-static {v1, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public parseSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lnet/sf/saxon/om/QNameParser;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    .line 4
    iget v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    if-lt v3, v1, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    .line 6
    :cond_0
    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->SEQUENCE_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    .line 7
    new-instance v0, Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Tokenizer;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    .line 8
    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v0

    .line 9
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iput v0, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    const/4 v4, 0x0

    if-lt v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    .line 10
    :goto_0
    iput-boolean v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v4

    .line 11
    :goto_1
    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    .line 12
    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    const/16 v0, 0x28

    if-ne p2, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    :cond_4
    :goto_2
    iput-boolean v2, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    iput-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    .line 13
    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v4, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->tokenize(Ljava/lang/String;II)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    .line 15
    :goto_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget p2, p2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eqz p2, :cond_5

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected token "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->currentTokenDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " beyond end of SequenceType"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_5
    return-object p1
.end method

.method public parseSimpleMappingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePathExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v2, :cond_0

    const-string v2, "XPath \'!\' operator requires XPath 3.0 to be enabled"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePathExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/expr/instruct/ForEach;

    invoke-direct {v3, v1, v2}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public parseStepExpression(Z)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseBasicStep(Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->isForwards:[Z

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v3

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parsePredicate(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->parseDynamicFunctionCall(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0xd5

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseLookup(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    new-array v0, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, v0, v2

    const-string p1, "reverse"

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1
.end method

.method public parseStringConstructor()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "String constructor expressions are allowed only in XQuery"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseStringLiteral(Z)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStringLiteral(Ljava/lang/String;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public parseSwitchExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "switch is not allowed in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseTryCatchExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "try/catch expressions are not allowed in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseTypeswitchExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "typeswitch is not allowed in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseUnionType()Lnet/sf/saxon/type/ItemType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v3, 0x45

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v2, "enum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseEnumType()Lnet/sf/saxon/type/EnumerationType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->getPlainType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/type/AtomicType;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/type/PlainType;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/type/UnionType;

    invoke-interface {v2}, Lnet/sf/saxon/type/UnionType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/PlainType;

    instance-of v4, v3, Lnet/sf/saxon/type/AtomicType;

    if-eqz v4, :cond_2

    check-cast v3, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Union type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has a non-atomic member type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists, but is not atomic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :goto_3
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance p0, Lnet/sf/saxon/type/LocalUnionType;

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/LocalUnionType;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \',\' or \')\' after member name in union type, found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public parseValidateExpression()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "validate{} expressions are not allowed in XPath"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>()V

    return-object p0
.end method

.method public parseVariableReference()Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/ParserExtension;->bindNumericParameterReference(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v2, :cond_1

    new-instance p0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    return-object p0

    :cond_1
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->findRangeVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    if-lez v2, :cond_4

    sget-object v2, Lnet/sf/saxon/om/StandardNames;->errorVariables:[Lnet/sf/saxon/om/StructuredQName;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, "http://saxon.sf.net/"

    const-string v3, "dynamic-error-info"

    const-string v5, "saxon"

    invoke-direct {v0, v5, v2, v3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lnet/sf/saxon/trans/SymbolicName$F;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    new-array v0, v3, [Lnet/sf/saxon/expr/Expression;

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v4

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v0, p0, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2, v1}, Lnet/sf/saxon/expr/StaticContext;->bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0
.end method

.method public final q(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    new-instance v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vv"

    const-string v4, "http://ns.saxonica.com/anonymous-type"

    invoke-direct {v1, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/LocalVariableReference;->setBinding(Lnet/sf/saxon/expr/LocalBinding;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/Assignation;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    new-instance v3, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/LocalVariableReference;->setBinding(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/expr/Assignation;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    new-instance v4, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-direct {v4, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const/4 p0, 0x2

    new-array v5, p0, [Lnet/sf/saxon/expr/Expression;

    const/4 v6, 0x1

    new-array v7, v6, [Lnet/sf/saxon/expr/Expression;

    aput-object v1, v7, v2

    const-string v1, "exists"

    invoke-static {v1, v4, v7}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    aput-object v1, v5, v2

    sget-object v1, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v1, p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    aput-object p1, v5, v6

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    aput-object v3, p0, v2

    aput-object p2, p0, v6

    new-instance p1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p1, v5, p0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final r(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const/16 p0, 0x2d

    if-eq p2, p0, :cond_1

    const/16 p0, 0x2f

    if-ne p2, p0, :cond_0

    invoke-static {p1, p3}, Lnet/sf/saxon/expr/TreatExpression;->make(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/InstanceOfExpression;

    invoke-direct {p0, p1, p3}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public reportMissingFunction(ILnet/sf/saxon/om/StructuredQName;[Lnet/sf/saxon/expr/Expression;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/sf/saxon/om/StructuredQName;",
            "[",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-argument function named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ". "

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p4, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v1, p4}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    move p4, v2

    :goto_1
    array-length v4, p3

    add-int/lit8 v4, v4, 0x5

    if-ge p4, v4, :cond_2

    array-length v4, p3

    if-eq p4, v4, :cond_1

    new-instance v4, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v4, p2, p4}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-interface {v5, v4, v6}, Lnet/sf/saxon/functions/FunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    move p3, v2

    :goto_2
    if-eqz p3, :cond_3

    const-string p2, ". The namespace URI and local name are recognized, but the number of arguments is wrong"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-static {p2, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->getMissingFunctionExplanation(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/Configuration;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string p2, ". External function calls have been disabled"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    iget-object p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTDE1425"

    invoke-direct {p0, p1, p2, v2}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XPST0017"

    invoke-virtual {p0, p2, p3, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveFunctionName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    if-eqz v0, :cond_0

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string p1, "http://saxon.sf.net/"

    const-string v0, "dummy"

    const-string v1, ""

    invoke-direct {p0, v1, p1, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/Type;->getBuiltInItemType(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    check-cast v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->c(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/type/BuiltInAtomicType;)V

    :cond_1
    return-object p1
.end method

.method public final s(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/CastingTarget;Z)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p3, Lnet/sf/saxon/type/AtomicType;

    const/16 v1, 0x39

    const/16 v2, 0x2e

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    if-eq p3, v0, :cond_4

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    new-instance p0, Lnet/sf/saxon/expr/CastableExpression;

    check-cast p3, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p0, p1, p3, p4}, Lnet/sf/saxon/expr/CastableExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    instance-of p1, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/CastingExpression;->setOperandIsStringLiteral(Z)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/expr/CastExpression;

    check-cast p3, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p0, p1, p3, p4}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    instance-of p1, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/CastingExpression;->setOperandIsStringLiteral(Z)V

    :cond_3
    return-object p0

    :cond_4
    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    const-string v4, "XPST0051"

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    if-eq p2, v2, :cond_7

    if-ne p2, v1, :cond_6

    instance-of p2, p3, Lnet/sf/saxon/type/UnionType;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/expr/UnionCastableFunction;

    check-cast p3, Lnet/sf/saxon/type/UnionType;

    invoke-direct {p2, p3, p0, p4}, Lnet/sf/saxon/expr/UnionCastableFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p3, v3, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p3, v0

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_5
    instance-of p2, p3, Lnet/sf/saxon/type/ListType;

    if-eqz p2, :cond_9

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/expr/ListCastableFunction;

    check-cast p3, Lnet/sf/saxon/type/ListType;

    invoke-direct {p2, p3, p0, p4}, Lnet/sf/saxon/expr/ListCastableFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p3, v3, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p3, v0

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7
    instance-of p2, p3, Lnet/sf/saxon/type/UnionType;

    if-eqz p2, :cond_8

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/expr/UnionConstructorFunction;

    check-cast p3, Lnet/sf/saxon/type/UnionType;

    invoke-direct {p2, p3, p0, p4}, Lnet/sf/saxon/expr/UnionConstructorFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p3, v3, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p3, v0

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_8
    instance-of p2, p3, Lnet/sf/saxon/type/ListType;

    if-eqz p2, :cond_9

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/expr/ListConstructorFunction;

    check-cast p3, Lnet/sf/saxon/type/ListType;

    invoke-direct {p2, p3, p0, p4}, Lnet/sf/saxon/expr/ListConstructorFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p3, v3, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p3, v0

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot cast to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Casting to list or union types requires XPath 3.0 to be enabled"

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public setAccelerator(Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->b:Lnet/sf/saxon/expr/parser/XPathParser$Accelerator;

    return-void
.end method

.method public setAllowAbsentExpression(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->a:Z

    return-void
.end method

.method public setCatchDepth(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->catchDepth:I

    return-void
.end method

.method public setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->codeInjector:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-void
.end method

.method public setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V
    .locals 8

    const/16 v0, 0x1e

    if-nez p2, :cond_0

    move p2, v0

    :cond_0
    const/16 v1, 0x131

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1

    iput-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30XSLTExtensions:Z

    move p2, v0

    :cond_1
    sget-object v1, Lnet/sf/saxon/expr/parser/XPathParser$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/16 v3, 0x14

    const-string v4, "Unsupported language version "

    const/16 v5, 0x28

    const/16 v6, 0x1f

    if-eq v1, v2, :cond_6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_4

    const/4 v7, 0x3

    if-eq v1, v7, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_8

    if-eq p2, v6, :cond_8

    if-ne p2, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown language "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eq p2, v3, :cond_8

    if-eq p2, v0, :cond_8

    if-eq p2, v6, :cond_8

    if-ne p2, v5, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eq p2, v3, :cond_8

    if-eq p2, v0, :cond_8

    if-eq p2, v6, :cond_8

    if-ne p2, v5, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    iput p2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->languageVersion:I

    const/4 p1, 0x0

    if-lt p2, v0, :cond_9

    move v0, v2

    goto :goto_1

    :cond_9
    move v0, p1

    :goto_1
    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-lt p2, v6, :cond_a

    move v0, v2

    goto :goto_2

    :cond_a
    move v0, p1

    :goto_2
    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath31Syntax:Z

    if-lt p2, v5, :cond_b

    goto :goto_3

    :cond_b
    move v2, p1

    :goto_3
    iput-boolean v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/expr/Expression;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation(I)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    return-void
.end method

.method public setLocation(Lnet/sf/saxon/expr/flwor/Clause;I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/parser/Tokenizer;->getLineNumber(I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/parser/Tokenizer;->getColumnNumber(I)I

    move-result p2

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/StaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNestedLocation(Lnet/sf/saxon/s9api/Location;IILjava/lang/String;)Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 8
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    return-void
.end method

.method public setParserExtension(Lnet/sf/saxon/expr/parser/ParserExtension;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->parserExtension:Lnet/sf/saxon/expr/parser/ParserExtension;

    return-void
.end method

.method public setQNameParser(Lnet/sf/saxon/om/QNameParser;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->qNameParser:Lnet/sf/saxon/om/QNameParser;

    return-void
.end method

.method public setRangeVariableStack(Lnet/sf/saxon/tree/util/IndexedStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    return-void
.end method

.method public setRangeVariables(Lnet/sf/saxon/tree/util/IndexedStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    return-void
.end method

.method public setScanOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->scanOnly:Z

    return-void
.end method

.method public final t(ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    instance-of v1, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    move-object v0, p0

    :cond_0
    const/16 p0, 0x12b

    if-ne p1, p0, :cond_1

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->negate()Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    :goto_0
    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/expr/parser/TypeChecker;->makeArithmeticExpression(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public testPermittedAxis(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const-string p1, "The preceding-or-ancestor axis is for internal use only"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final u()Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    const/16 v4, 0x1b

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public undeclareRangeVariable()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->rangeVariables:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public final v()Lnet/sf/saxon/pattern/NodeTest;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, "schema-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->k(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xcc

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    const-string v0, "schema-element() and schema-attribute() require a name to be supplied"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    if-eqz v0, :cond_39

    const/4 v9, 0x7

    const/16 v10, 0xc9

    const-string v11, ""

    const/4 v12, 0x2

    const/4 v13, -0x1

    if-eq v0, v5, :cond_14

    if-eq v0, v12, :cond_14

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    if-eq v0, v9, :cond_c

    const/16 v3, 0x8

    if-eq v0, v3, :cond_a

    const/16 v3, 0x9

    const/16 v7, 0x58

    if-eq v0, v3, :cond_7

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    if-eq v0, v7, :cond_2

    const-string v0, "Unknown node kind"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_2
    const-string v0, "item() is not allowed in a path expression"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->isNamespaceTestAllowed()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "namespace-node() test is not allowed in XPath 2.0/XQuery 1.0"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object v0

    :cond_5
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v4, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v0, v4, :cond_6

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v4, v10, :cond_6

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v1, v3, v11, v0, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    return-object v1

    :cond_6
    const-string v0, "No arguments are allowed in namespace-node()"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_7
    if-eqz v4, :cond_8

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object v0

    :cond_8
    :try_start_0
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->k(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eq v7, v5, :cond_9

    const-string v0, "Argument to document-node() must be an element type descriptor"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->v()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Lnet/sf/saxon/pattern/DocumentNodeTest;

    invoke-direct {v1, v0}, Lnet/sf/saxon/pattern/DocumentNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object v1

    :cond_a
    if-eqz v4, :cond_b

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object v0

    :cond_b
    const-string v0, "Expected \')\': no arguments are allowed in comment()"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_c
    if-eqz v4, :cond_d

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object v0

    :cond_d
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_f

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v0, "Processing instruction name must be a valid NCName"

    const-string v3, "XPTY0004"

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-virtual {v2, v11, v0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_1

    :cond_f
    if-ne v3, v10, :cond_11

    :try_start_1
    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    aget-object v0, v0, v5

    invoke-virtual {v2, v11, v0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v13, v0

    goto :goto_1

    :cond_10
    const-string v0, "Processing instruction name must not contain a colon"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid processing instruction name. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    const-string v0, "Processing instruction name must be a QName or a string literal"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v0, v9, v13, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    return-object v0

    :cond_12
    if-eqz v4, :cond_13

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object v0

    :cond_13
    const-string v0, "Expected \')\': no arguments are allowed in text()"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_14
    if-eqz v4, :cond_15

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v14, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const-string v15, "Unexpected "

    const/16 v7, 0xcf

    if-eq v14, v7, :cond_1b

    const/16 v7, 0x11

    if-ne v14, v7, :cond_16

    goto :goto_3

    :cond_16
    if-ne v14, v10, :cond_18

    iget-object v11, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    if-ne v0, v5, :cond_17

    move v4, v5

    goto :goto_2

    :cond_17
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v11, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->makeFingerprint(Ljava/lang/String;Z)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    move-object v7, v6

    goto :goto_6

    :cond_18
    const/16 v4, 0xd0

    if-eq v14, v4, :cond_19

    const/16 v4, 0x46

    if-ne v14, v4, :cond_1a

    :cond_19
    iget-boolean v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath40Syntax:Z

    if-eqz v4, :cond_1a

    int-to-short v4, v0

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->parseNodeTest(S)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    goto :goto_4

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v14, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v14, v14, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v7, v7, v14

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " after \'(\' in SequenceType"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    move-object v7, v6

    goto :goto_5

    :cond_1b
    :goto_3
    if-eqz v3, :cond_1c

    const-string v0, "schema-element() and schema-attribute() must specify an actual name, not \'*\'"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v6

    :cond_1c
    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :goto_4
    move-object v7, v4

    :goto_5
    move v4, v13

    :goto_6
    if-eq v4, v13, :cond_1d

    invoke-virtual {v2, v4}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_1d
    move-object v14, v6

    :goto_7
    iget-object v10, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v10, v10, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v9, 0x27

    const-string v5, "No schema has been imported for namespace \'"

    const-string v6, "XPST0008"

    if-ne v10, v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    if-ne v4, v13, :cond_1e

    return-object v7

    :cond_1e
    const v7, 0xfffff

    if-ne v0, v12, :cond_22

    if-eqz v3, :cond_21

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    and-int v2, v4, v7

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->getAttributeDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v0

    iget-object v2, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v2, v14}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no declaration for attribute @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in an imported schema"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_20
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    return-object v0

    :cond_21
    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v0, v12, v4, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    return-object v0

    :cond_22
    if-eqz v3, :cond_25

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0, v14}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    and-int v2, v4, v7

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no declaration for element <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> in an imported schema"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return-object v11

    :cond_24
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    return-object v0

    :cond_25
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v11, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNameTest(SLjava/lang/String;Z)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v11, 0x0

    const/4 v14, 0x7

    if-ne v10, v14, :cond_38

    if-eqz v3, :cond_27

    const-string v0, "schema-element() and schema-attribute() must have one argument only"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v11

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v3, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v10, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v14, 0xcf

    if-ne v10, v14, :cond_28

    const-string v0, "\'*\' is no longer permitted as the second argument of element() and attribute()"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v11

    :cond_28
    const/16 v11, 0xc9

    if-ne v10, v11, :cond_37

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget-object v10, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v10}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    const-string v11, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    iget-object v5, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    goto :goto_8

    :cond_29
    iget-object v11, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v11, v10}, Lnet/sf/saxon/expr/StaticContext;->isImportedSchema(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v5, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    :goto_8
    if-nez v5, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2b
    if-ne v0, v12, :cond_2c

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "An attribute cannot have a complex type"

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    :cond_2c
    new-instance v3, Lnet/sf/saxon/pattern/ContentTypeTest;

    iget-object v6, v1, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    const/4 v9, 0x0

    invoke-direct {v3, v0, v5, v6, v9}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    const/16 v6, 0xd5

    if-ne v4, v13, :cond_2f

    if-eqz v7, :cond_2d

    instance-of v9, v7, Lnet/sf/saxon/pattern/NodeKindTest;

    if-eqz v9, :cond_2f

    :cond_2d
    if-ne v0, v12, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_c

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v0, v6, :cond_36

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lnet/sf/saxon/pattern/ContentTypeTest;->setNillable(Z)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_c

    :cond_2f
    const/16 v9, 0x17

    if-ne v0, v12, :cond_33

    if-nez v7, :cond_30

    new-instance v7, Lnet/sf/saxon/pattern/NameTest;

    invoke-direct {v7, v12, v4, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    :cond_30
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v0

    if-eq v5, v0, :cond_32

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    if-ne v5, v0, :cond_31

    goto :goto_9

    :cond_31
    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-direct {v0, v7, v9, v3}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    move-object v3, v0

    goto :goto_a

    :cond_32
    :goto_9
    move-object v3, v7

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    goto :goto_c

    :cond_33
    if-nez v7, :cond_34

    new-instance v7, Lnet/sf/saxon/pattern/NameTest;

    const/4 v0, 0x1

    invoke-direct {v7, v0, v4, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    goto :goto_b

    :cond_34
    const/4 v0, 0x1

    :goto_b
    new-instance v2, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-direct {v2, v7, v9, v3}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v4, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v4, v6, :cond_35

    invoke-virtual {v3, v0}, Lnet/sf/saxon/pattern/ContentTypeTest;->setNillable(Z)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_35
    move-object v3, v2

    :cond_36
    :goto_c
    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v3

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v3, v1, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " after \',\' in SequenceType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_38
    move-object v0, v11

    const-string v2, "Expected \')\' or \',\' in SequenceType"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v0

    :cond_39
    move-object v0, v6

    if-eqz v4, :cond_3a

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    return-object v0

    :cond_3a
    const-string v2, "Expected \')\': no arguments are allowed in node()"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    return-object v0
.end method

.method public final w()Lnet/sf/saxon/type/ItemType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->allowXPath30Syntax:Z

    if-nez v0, :cond_0

    const-string v0, "Parenthesized item types require 3.0 to be enabled"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lnet/sf/saxon/pattern/NodeTest;

    const/16 v2, 0xcc

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v3, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v2, Lnet/sf/saxon/pattern/CombinedNodeTest;

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v2, v0, v1, v3}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v0
.end method

.method public warning(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->SUPPRESS_XPATH_WARNINGS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->g(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "near"

    goto :goto_0

    :cond_0
    const-string v2, "in"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->env:Lnet/sf/saxon/expr/StaticContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    return-void
.end method

.method public final x()Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    :goto_0
    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v6, 0x15

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    const/16 v6, 0xc9

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v6, v6, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    new-instance v7, Lnet/sf/saxon/expr/QuantifiedExpression;

    invoke-direct {v7}, Lnet/sf/saxon/expr/QuantifiedExpression;-><init>()V

    sget-object v8, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v7, v0}, Lnet/sf/saxon/expr/QuantifiedExpression;->setOperator(I)V

    invoke-virtual {p0, v7, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->setLocation(Lnet/sf/saxon/expr/Expression;I)V

    const-string v5, ""

    invoke-virtual {p0, v6, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->makeStructuredQName(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v7, v5}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v5, v5, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0x47

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v6, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v6

    const/16 v8, 0x4000

    if-eq v6, v8, :cond_0

    const-string v6, "Occurrence indicator on singleton range variable has no effect"

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->warning(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v5

    invoke-static {v5, v8}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    :cond_0
    invoke-virtual {v7, v5}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    :cond_1
    const/16 v5, 0x1f

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v7, v5}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/parser/XPathParser;->declareRangeVariable(Lnet/sf/saxon/expr/LocalBinding;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_2
    move-object v3, v7

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v5, 0x7

    if-eq v2, v5, :cond_4

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExprSingle()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->undeclareRangeVariable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeTracer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    move-object v2, v7

    goto/16 :goto_0
.end method

.method public final y(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/type/ItemType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lnet/sf/saxon/ma/map/RecordTest;

    invoke-direct {v2}, Lnet/sf/saxon/ma/map/RecordTest;-><init>()V

    :cond_0
    :goto_0
    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0xc9

    const-string v7, "dummy"

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-static {v5}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not a valid NCName"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v6, 0xca

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, "Name of field in tuple must be either an NCName or a quoted string literal"

    invoke-virtual {p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    move-object v5, v7

    :cond_3
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate field name ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v7, v5

    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0xd5

    if-ne v5, v6, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    :cond_5
    sget-object v5, Lnet/sf/saxon/value/SequenceType;->NON_EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v8, 0x47

    if-ne v6, v8, :cond_9

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0xce

    if-ne v5, v6, :cond_8

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseOccurrenceIndicator()I

    move-result v5

    new-instance v6, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;

    invoke-direct {v6, v2}, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;-><init>(Lnet/sf/saxon/ma/map/RecordTest;)V

    invoke-static {v6, v5}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-static {v5}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A self-referencing field in a record type must be emptiable or optional"

    const-string v0, "XPST0140"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    move-object v5, v6

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v6, 0xcc

    if-ne v5, v6, :cond_a

    const/4 p0, 0x0

    goto :goto_5

    :cond_a
    const/4 v7, 0x7

    if-ne v5, v7, :cond_d

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v7, 0xcf

    if-eq v5, v7, :cond_b

    const/16 v7, 0x11

    if-ne v5, v7, :cond_0

    :cond_b
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p1, v6}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    const/4 p0, 0x1

    :goto_5
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "RecordTest must contain at least one field"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {v2, v1, v4, v3, p0}, Lnet/sf/saxon/ma/map/RecordTest;->setDetails(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Z)V

    return-object v2

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \',\' or \')\' after field in RecordTest, found \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget v7, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final z()Lnet/sf/saxon/type/ItemType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->w()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    const/16 v3, 0xc9

    if-ne v1, v3, :cond_1

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->i(Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    move-object p0, v0

    goto/16 :goto_2

    :cond_1
    const/16 v4, 0x45

    const-string v5, "function"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v1, v4, :cond_f

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v2, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "empty-sequence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "union"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "tuple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :sswitch_6
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "enum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v6

    goto :goto_1

    :sswitch_8
    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v2, v7

    goto :goto_1

    :sswitch_9
    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v2, v8

    goto :goto_1

    :sswitch_a
    const-string v1, "atomic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_1
    const/16 v0, 0xcc

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->v()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion30()V

    sget-object v0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionItemType(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseUnionType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseArrayItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->checkLanguageVersion40()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/sf/saxon/expr/StaticContext;->resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Named type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has not been defined"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    return-object v2

    :pswitch_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseEnumType()Lnet/sf/saxon/type/EnumerationType;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseMapItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->y(Lnet/sf/saxon/expr/parser/XPathParser;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->getPlainType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/type/AtomicType;

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exists, but is not atomic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    move-object p0, v1

    goto :goto_2

    :cond_f
    const/16 v2, 0x6a

    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseAnnotationsList()Lnet/sf/saxon/query/AnnotationList;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseFunctionItemType(Lnet/sf/saxon/query/AnnotationList;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'function\' to follow annotation assertions, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_11
    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->language:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    sget-object v4, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const/16 v5, 0xd0

    if-ne v2, v4, :cond_12

    if-ne v1, v5, :cond_12

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v8, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNamespaceTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/NamespaceTest;

    move-result-object p0

    return-object p0

    :cond_12
    const/16 v0, 0x46

    if-ne v2, v4, :cond_13

    if-ne v1, v0, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v8, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocalNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/LocalNameTest;

    move-result-object p0

    return-object p0

    :cond_13
    if-ne v2, v4, :cond_16

    if-ne v1, v6, :cond_16

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v2, v5, :cond_14

    iget-object v0, v1, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v7, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeNamespaceTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/NamespaceTest;

    move-result-object p0

    return-object p0

    :cond_14
    if-ne v2, v0, :cond_15

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/parser/XPathParser;->expect(I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->nextToken()V

    invoke-virtual {p0, v7, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->makeLocalNameTest(SLjava/lang/String;)Lnet/sf/saxon/pattern/LocalNameTest;

    move-result-object p0

    return-object p0

    :cond_15
    const-string v0, "Expected NodeTest after \'@\'"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected type name in SequenceType, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->tokens:[Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/XPathParser;->t:Lnet/sf/saxon/expr/parser/Tokenizer;

    iget v2, v2, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->grumble(Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53e329d5 -> :sswitch_a
        -0x37b993af -> :sswitch_9
        0x1a55c -> :sswitch_8
        0x2f9501 -> :sswitch_7
        0x317b13 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x58c7259 -> :sswitch_4
        0x69987c8 -> :sswitch_3
        0x6a456cf -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x56d21c41 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
