.class public Lnet/sf/saxon/style/XSLMerge;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/XSLMerge;->u:I

    return-void
.end method


# virtual methods
.method public final Z([Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    aget-object v2, p1, v0

    iget-object v2, v2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v0

    iget-object v2, v2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    iget-object v3, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, p1, v2

    iget-object v3, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/XSLMerge;->a0(Lnet/sf/saxon/expr/sort/SortKeyDefinition;Lnet/sf/saxon/expr/sort/SortKeyDefinition;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " merge key definition of the "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " merge source is incompatible with the "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " merge key definition of the first merge source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XTDE2210"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final a0(Lnet/sf/saxon/expr/sort/SortKeyDefinition;Lnet/sf/saxon/expr/sort/SortKeyDefinition;)Z
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/XSLMerge;->b0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/XSLMerge;->b0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/XSLMerge;->b0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/XSLMerge;->b0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/XSLMerge;->b0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b0(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/sort/MergeInstr;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/MergeInstr;-><init>()V

    iget v1, p0, Lnet/sf/saxon/style/XSLMerge;->u:I

    new-array v1, v1, [Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/NodeInfo;

    instance-of v7, v6, Lnet/sf/saxon/style/XSLMergeSource;

    if-eqz v7, :cond_4

    check-cast v6, Lnet/sf/saxon/style/XSLMergeSource;

    invoke-virtual {v6, p1, p2}, Lnet/sf/saxon/style/StyleElement;->M(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v7

    if-nez v4, :cond_1

    invoke-virtual {v7}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v8

    if-eq v4, v8, :cond_2

    const-string v8, "Each xsl:merge-source must have the same number of xsl:merge-key children"

    const-string v9, "XTSE2200"

    invoke-virtual {p0, v8, v9}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v6}, Lnet/sf/saxon/style/XSLMergeSource;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v6}, Lnet/sf/saxon/style/XSLMergeSource;->isSortBeforeMerge()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Lnet/sf/saxon/expr/sort/SortExpression;

    new-instance v10, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v10}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v7, v10}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    move-object v8, v9

    :cond_3
    invoke-virtual {v6, v0, v8}, Lnet/sf/saxon/style/XSLMergeSource;->makeMergeSource(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    move-result-object v6

    iput-object v7, v6, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v1, v5

    move v5, v7

    goto :goto_0

    :cond_4
    instance-of v7, v6, Lnet/sf/saxon/style/XSLMergeAction;

    if-eqz v7, :cond_0

    check-cast v6, Lnet/sf/saxon/style/XSLMergeAction;

    const/4 v2, 0x1

    invoke-virtual {v6, p1, p2, v2}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    :cond_5
    :try_start_0
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/XSLMerge;->Z([Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/sort/MergeInstr;->init([Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/sort/MergeInstr;

    return-object v0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareAttributes()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "XTSE0010"

    const/4 v5, 0x2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    instance-of v6, v2, Lnet/sf/saxon/style/XSLMergeSource;

    if-eqz v6, :cond_2

    check-cast v2, Lnet/sf/saxon/style/XSLMergeSource;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLMergeSource;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Duplicate xsl:merge-source/@name"

    const-string v5, "XTSE3190"

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    iget v2, p0, Lnet/sf/saxon/style/XSLMerge;->u:I

    add-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/style/XSLMerge;->u:I

    goto :goto_0

    :cond_2
    instance-of v6, v2, Lnet/sf/saxon/style/XSLMergeAction;

    if-eqz v6, :cond_4

    and-int/lit8 v2, v1, 0x2

    if-ne v2, v5, :cond_3

    const-string v2, "xsl:merge must have only one xsl:merge-action child element"

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "No character data is allowed within xsl:merge"

    const-string v3, "XXXX"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v5, v2, Lnet/sf/saxon/style/XSLFallback;

    if-eqz v5, :cond_6

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    const-string v2, "xsl:fallback child of xsl:merge can appear only after xsl:merge-action"

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed as a child of xsl:merge"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne v1, v3, :cond_8

    const-string p1, "xsl:merge element requires an xsl:merge-action"

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-ne v1, v5, :cond_9

    const-string p1, "xsl:merge element requires at least one xsl:merge-source child element"

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
