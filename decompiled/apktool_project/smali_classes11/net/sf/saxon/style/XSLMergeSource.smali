.class public Lnet/sf/saxon/style/XSLMergeSource;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:I

.field public O:Lnet/sf/saxon/type/SchemaType;

.field public Q:Z

.field public Z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Z

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->x:Z

    iput v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->y:I

    const/4 v1, 0x4

    iput v1, p0, Lnet/sf/saxon/style/XSLMergeSource;->J:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/style/XSLMergeSource;->O:Lnet/sf/saxon/type/SchemaType;

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->Q:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->Z:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForEachItem()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->u:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getForEachSource()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getSchemaTypeAttribute()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->O:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->w:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->z:Ljava/lang/String;

    return-object p0
.end method

.method public getValidationAction()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->J:I

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSortBeforeMerge()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->x:Z

    return p0
.end method

.method public makeMergeSource(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    iget-object v1, p0, Lnet/sf/saxon/style/XSLMergeSource;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initForEachItem(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initForEachStream(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, Lnet/sf/saxon/style/XSLMergeSource;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initRowSelect(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->baseURI:Ljava/lang/String;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->z:Ljava/lang/String;

    iput-object p1, v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    iget p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->J:I

    iput p1, v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    iget-object p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->O:Lnet/sf/saxon/type/SchemaType;

    iput-object p1, v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->schemaType:Lnet/sf/saxon/type/SchemaType;

    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->Q:Z

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->setStreamable(Z)V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMergeSource;->Z:Ljava/util/Set;

    iput-object p0, v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->accumulators:Ljava/util/Set;

    return-object v0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareAttributes()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "XTSE0020"

    const-string v12, "select"

    if-eqz v9, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v14

    invoke-interface {v14}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    const-string v11, "sort-before-merge"

    const/16 v17, -0x1

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v12, "use-accumulators"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v17, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "for-each-source"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_2

    :cond_1
    const/4 v12, 0x7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x6

    goto :goto_1

    :sswitch_3
    const-string v12, "type"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x5

    goto :goto_1

    :sswitch_4
    const-string v12, "name"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x4

    goto :goto_1

    :sswitch_5
    const-string v12, "validation"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x3

    goto :goto_1

    :sswitch_6
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    :cond_6
    const/4 v12, 0x2

    goto :goto_1

    :sswitch_7
    const-string v12, "streamable"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_2

    :cond_7
    const/4 v12, 0x1

    :goto_1
    move/from16 v17, v12

    goto :goto_2

    :sswitch_8
    const-string v12, "for-each-item"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_2

    :cond_8
    const/16 v17, 0x0

    :goto_2
    packed-switch v17, :pswitch_data_0

    invoke-virtual {v0, v14}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v13}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0, v13, v9}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, v0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    move-object v3, v13

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0, v11, v13}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Lnet/sf/saxon/style/XSLMergeSource;->x:Z

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v13}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v13}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    iput-object v9, v0, Lnet/sf/saxon/style/XSLMergeSource;->z:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "xsl:merge-source/@name ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") is not a valid NCName"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v10}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v13}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0, v13, v9}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iput-object v4, v0, Lnet/sf/saxon/style/XSLMergeSource;->w:Lnet/sf/saxon/expr/Expression;

    move-object v4, v13

    goto/16 :goto_0

    :pswitch_7
    move-object v7, v13

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0, v13, v9}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->u:Lnet/sf/saxon/expr/Expression;

    move-object v2, v13

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lnet/sf/saxon/style/XSLMergeSource;->z:Ljava/lang/String;

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saxon-merge-source-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->hashCode()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLMergeSource;->z:Ljava/lang/String;

    :cond_b
    const-string v1, "XTSE3195"

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    const-string v2, "The for-each-item and for-each-source attributes must not both be present"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-nez v4, :cond_d

    invoke-virtual {v0, v12}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_d
    if-nez v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v2

    iput v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->J:I

    goto :goto_3

    :cond_e
    invoke-virtual {v0, v5}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->J:I

    :goto_3
    if-eqz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v4, "XTSE1660"

    invoke-virtual {v0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0, v6}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->O:Lnet/sf/saxon/type/SchemaType;

    const/16 v2, 0x8

    iput v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->J:I

    :cond_10
    if-eqz v6, :cond_11

    if-eqz v5, :cond_11

    const-string v2, "The @validation and @type attributes are mutually exclusive"

    const-string v4, "XTSE1505"

    invoke-virtual {v0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-nez v6, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    if-nez v3, :cond_13

    const-string v2, "The @type and @validation attributes can be used only when @for-each-stream is specified"

    invoke-virtual {v0, v2, v10}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->Q:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    if-nez v2, :cond_15

    const-string v2, "Streaming on xsl:merge-source is possible only when @for-each-source is used"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    iget-object v1, v0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/sf/saxon/style/XSLMergeSource;->Q:Z

    :cond_15
    :goto_4
    if-nez v8, :cond_16

    const-string v8, ""

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getUsedAccumulators(Ljava/lang/String;Lnet/sf/saxon/style/StyleElement;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLMergeSource;->Z:Ljava/util/Set;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e85e4a5 -> :sswitch_8
        -0x4730db26 -> :sswitch_7
        -0x3600cb04 -> :sswitch_6
        -0x298b787 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x170adc39 -> :sswitch_2
        0x3c321663 -> :sswitch_1
        0x5f23fb33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "for-each-item"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "for-each-source"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->v:Lnet/sf/saxon/expr/Expression;

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->w:Lnet/sf/saxon/expr/Expression;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "XTSE0010"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v0, Lnet/sf/saxon/style/XSLMergeKey;

    if-eqz v2, :cond_1

    iget v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/style/XSLMergeSource;->y:I

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No character data is allowed within xsl:merge-source"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    const-string v2, "No children other than xsl:merge-key are allowed within xsl:merge-source"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lnet/sf/saxon/style/XSLMergeSource;->y:I

    if-nez p1, :cond_4

    const-string p1, "xsl:merge-source must have exactly at least one xsl:merge-key child element"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
