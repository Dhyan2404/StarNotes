.class public abstract Lnet/sf/saxon/style/XSLSortOrMergeKey;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field protected caseOrder:Lnet/sf/saxon/expr/Expression;

.field protected collationName:Lnet/sf/saxon/expr/Expression;

.field protected dataType:Lnet/sf/saxon/expr/Expression;

.field protected lang:Lnet/sf/saxon/expr/Expression;

.field protected order:Lnet/sf/saxon/expr/Expression;

.field protected select:Lnet/sf/saxon/expr/Expression;

.field protected sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

.field protected stable:Lnet/sf/saxon/expr/Expression;

.field protected useDefaultCollation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->dataType:Lnet/sf/saxon/expr/Expression;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->useDefaultCollation:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_0
    :try_start_0
    invoke-static {p1, v1}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    iput-object p2, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    return-object v1
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE1015"

    return-object p0
.end method

.method public getSortKeyDefinition()Lnet/sf/saxon/expr/sort/SortKeyDefinition;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    return-object p0
.end method

.method public getStable()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "order"

    const-string v11, "stable"

    const-string v12, "case-order"

    const/4 v13, 0x1

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v15

    invoke-interface {v15}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, -0x1

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move/from16 v13, v17

    goto :goto_2

    :sswitch_0
    const-string v10, "collation"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v13, 0x6

    goto :goto_2

    :sswitch_1
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x5

    goto :goto_2

    :sswitch_2
    const-string v10, "lang"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x4

    goto :goto_2

    :sswitch_3
    const-string v10, "data-type"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x3

    goto :goto_2

    :sswitch_4
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v13, 0x2

    goto :goto_2

    :sswitch_5
    const-string v10, "select"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :sswitch_6
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    :cond_6
    :goto_2
    packed-switch v13, :pswitch_data_0

    invoke-virtual {v0, v15}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->collationName:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->order:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->dataType:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0, v2, v9}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->caseOrder:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_7
    const-string v1, "ascending"

    if-nez v3, :cond_8

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->order:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :cond_8
    const-string v2, "descending"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v3, v13, v1}, Lnet/sf/saxon/style/StyleElement;->o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    :goto_3
    if-nez v4, :cond_9

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->dataType:Lnet/sf/saxon/expr/Expression;

    :cond_9
    if-nez v5, :cond_a

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v2, "#default"

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->caseOrder:Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    const-string v1, "lower-first"

    const-string v2, "upper-first"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v5, v13, v1}, Lnet/sf/saxon/style/StyleElement;->o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->useDefaultCollation:Z

    :goto_4
    if-eqz v6, :cond_c

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    iput-boolean v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->useDefaultCollation:Z

    iget-object v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    instance-of v2, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v2, :cond_d

    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v1, "The lang attribute must be a valid language code"

    const-string v2, "XTDE0030"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    goto :goto_6

    :cond_c
    :goto_5
    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    :cond_d
    :goto_6
    if-nez v8, :cond_e

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    goto :goto_7

    :cond_e
    sget-object v1, Lnet/sf/saxon/style/StyleElement;->YES_NO:[Ljava/lang/String;

    invoke-virtual {v0, v11, v8, v13, v1}, Lnet/sf/saxon/style/StyleElement;->o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    :goto_7
    if-eqz v7, :cond_f

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->useDefaultCollation:Z

    :cond_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d930d8f -> :sswitch_6
        -0x3600cb04 -> :sswitch_5
        -0x353274c5 -> :sswitch_4
        -0x18690483 -> :sswitch_3
        0x3291ee -> :sswitch_2
        0x651874e -> :sswitch_1
        0x7012ff89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " element with a select attribute must be empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSortOrMergeKey;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/ExpressionContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_1
    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->useDefaultCollation:Z

    if-eqz p1, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->collationName:Lnet/sf/saxon/expr/Expression;

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->collationName:Lnet/sf/saxon/expr/Expression;

    instance-of v0, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_4

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/net/URI;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collation name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a valid URI"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    const-string p1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->w(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not been defined"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTDE1035"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    const-string p1, "select"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    const-string p1, "order"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->order:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->order:Lnet/sf/saxon/expr/Expression;

    const-string p1, "case-order"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->caseOrder:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->caseOrder:Lnet/sf/saxon/expr/Expression;

    const-string p1, "lang"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    const-string p1, "data-type"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->dataType:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->dataType:Lnet/sf/saxon/expr/Expression;

    const-string p1, "collation"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->collationName:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->collationName:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_6

    :try_start_1
    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "//select"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p1, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p1, v4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_6
    :goto_2
    new-instance p1, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-direct {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->order:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setOrder(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->caseOrder:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCaseOrder(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->lang:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setLanguage(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->select:Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->dataType:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setDataTypeExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->collationName:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollation(Lnet/sf/saxon/lib/StringCollator;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setBaseURI(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setStable(Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setBackwardsCompatible(Z)V

    return-void
.end method
