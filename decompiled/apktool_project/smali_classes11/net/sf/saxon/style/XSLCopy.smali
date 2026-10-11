.class public Lnet/sf/saxon/style/XSLCopy;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:Lnet/sf/saxon/expr/Expression;

.field public O:Z

.field public u:Ljava/lang/String;

.field public v:[Lnet/sf/saxon/om/StructuredQName;

.field public w:Z

.field public x:Z

.field public y:I

.field public z:Lnet/sf/saxon/type/SchemaType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->v:[Lnet/sf/saxon/om/StructuredQName;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLCopy;->w:Z

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLCopy;->x:Z

    const/4 v1, 0x3

    iput v1, p0, Lnet/sf/saxon/style/XSLCopy;->y:I

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->z:Lnet/sf/saxon/type/SchemaType;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopy;->O:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "select"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    :try_start_0
    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "xsl:copy/select"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v1, "XTTE3180"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLCopy;->v:[Lnet/sf/saxon/om/StructuredQName;

    if-eqz p2, :cond_1

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->makeUseAttributeSets([Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/InstanceOfExpression;

    new-instance v1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v3, 0x4000

    invoke-static {v2, v3}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    invoke-static {v0, p2}, Lnet/sf/saxon/expr/instruct/Choose;->makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_1

    :cond_0
    invoke-static {p2, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    :cond_2
    new-instance p2, Lnet/sf/saxon/expr/instruct/Copy;

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLCopy;->w:Z

    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLCopy;->x:Z

    iget-object v2, p0, Lnet/sf/saxon/style/XSLCopy;->z:Lnet/sf/saxon/type/SchemaType;

    iget v3, p0, Lnet/sf/saxon/style/XSLCopy;->y:I

    invoke-direct {p2, v0, v1, v2, v3}, Lnet/sf/saxon/expr/instruct/Copy;-><init>(ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLCopy;->O:Z

    if-eqz p1, :cond_3

    new-instance p1, Lnet/sf/saxon/expr/instruct/ForEach;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_3
    return-object p2
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 15

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "inherit-namespaces"

    const/4 v8, 0x1

    const-string v9, "copy-namespaces"

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, -0x1

    sparse-switch v13, :sswitch_data_0

    :goto_1
    move v8, v14

    goto :goto_2

    :sswitch_0
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x5

    goto :goto_2

    :sswitch_1
    const-string v7, "use-attribute-sets"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x4

    goto :goto_2

    :sswitch_2
    const-string v7, "type"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    goto :goto_2

    :sswitch_3
    const-string v7, "validation"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_4
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :sswitch_5
    const-string v7, "select"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :cond_5
    :goto_2
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p0, v10}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v12}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    iput-object v12, p0, Lnet/sf/saxon/style/XSLCopy;->u:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-static {v12}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-static {v12}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    invoke-static {v12}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    move-object v5, v6

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v9, v1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopy;->w:Z

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    const-string v0, "The type and validation attributes must not both be specified"

    const-string v1, "XTSE1505"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLCopy;->y:I

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLCopy;->y:I

    :goto_3
    if-eqz v2, :cond_b

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->z:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v1, "XTSE1660"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v0, 0x8

    iput v0, p0, Lnet/sf/saxon/style/XSLCopy;->y:I

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {p0, v7, v4}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopy;->x:Z

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    iput-boolean v8, p0, Lnet/sf/saxon/style/XSLCopy;->O:Z

    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_5
        -0x1eb6b830 -> :sswitch_4
        -0x298b787 -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x656fd1e8 -> :sswitch_1
        0x7aa1568a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/style/XSLCopy;->u:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->D(Ljava/lang/String;)[Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCopy;->v:[Lnet/sf/saxon/om/StructuredQName;

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCopy;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    return-void
.end method
