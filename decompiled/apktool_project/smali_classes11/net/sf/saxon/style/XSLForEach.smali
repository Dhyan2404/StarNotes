.class public Lnet/sf/saxon/style/XSLForEach;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static final synthetic y:Z


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Z

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLForEach;->v:Z

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->x:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->M(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/sort/SortExpression;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance p2, Lnet/sf/saxon/expr/instruct/ForEach;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLForEach;->v:Z

    iget-object v3, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p2, v1, p1, v2, v3}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/ForEach;->setInstruction(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLForEach;->x:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/ForEach;->setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/XSLSort;

    return p0
.end method

.method public markTailCalls()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->B()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->markTailCalls()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLForEach;->v:Z

    return v1
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "select"

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_1
    const-string v2, "array"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->arrayToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_2
    const-string v2, "map"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->mapToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_3
    const-string v2, "separator"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->x:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "threads"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "http://saxon.sf.net/"

    invoke-interface {v3, v2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v5}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/CompilerInfo;->isCompileWithTracing()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_5

    const-string v1, "saxon:threads - no multithreading takes place when compiling with trace enabled"

    const-string v3, "SXWN9012"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "saxon:threads - ignored when not running Saxon-EE"

    const-string v3, "SXWN9013"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_8

    const-string v0, "One of the attributes select|array|map must be present"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    :cond_9
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->p(Z)V

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLForEach;->u:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLForEach;->x:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    const-string v0, "separator"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLForEach;->x:Lnet/sf/saxon/expr/Expression;

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_1

    const-string v0, "threads"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLForEach;->w:Lnet/sf/saxon/expr/Expression;

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "An empty xsl:for-each instruction has no effect"

    const-string v0, "SXWN9009"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
