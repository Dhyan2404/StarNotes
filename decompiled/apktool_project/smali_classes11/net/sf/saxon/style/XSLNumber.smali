.class public Lnet/sf/saxon/style/XSLNumber;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:Lnet/sf/saxon/expr/Expression;

.field public O:Lnet/sf/saxon/expr/Expression;

.field public Q:Lnet/sf/saxon/expr/Expression;

.field public Z:Lnet/sf/saxon/expr/Expression;

.field public k0:Lnet/sf/saxon/expr/Expression;

.field public q0:Lnet/sf/saxon/expr/Expression;

.field public t0:Lnet/sf/saxon/expr/number/NumberFormatter;

.field public u:I

.field public v:Lnet/sf/saxon/pattern/Pattern;

.field public w:Lnet/sf/saxon/pattern/Pattern;

.field public x:Lnet/sf/saxon/expr/Expression;

.field public y:Lnet/sf/saxon/expr/Expression;

.field public z:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->v:Lnet/sf/saxon/pattern/Pattern;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->w:Lnet/sf/saxon/pattern/Pattern;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->J:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->O:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->Q:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->Z:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->k0:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->q0:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->t0:Lnet/sf/saxon/expr/number/NumberFormatter;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/expr/instruct/NumberInstruction;

    iget-object v5, v0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    iget v6, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    iget-object v7, v0, Lnet/sf/saxon/style/XSLNumber;->v:Lnet/sf/saxon/pattern/Pattern;

    iget-object v8, v0, Lnet/sf/saxon/style/XSLNumber;->w:Lnet/sf/saxon/pattern/Pattern;

    invoke-direct {v1, v5, v6, v7, v8}, Lnet/sf/saxon/expr/instruct/NumberInstruction;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/NumberSequenceFormatter;

    iget-object v7, v0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    iget-object v8, v0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    iget-object v9, v0, Lnet/sf/saxon/style/XSLNumber;->J:Lnet/sf/saxon/expr/Expression;

    iget-object v10, v0, Lnet/sf/saxon/style/XSLNumber;->O:Lnet/sf/saxon/expr/Expression;

    iget-object v11, v0, Lnet/sf/saxon/style/XSLNumber;->Q:Lnet/sf/saxon/expr/Expression;

    iget-object v12, v0, Lnet/sf/saxon/style/XSLNumber;->k0:Lnet/sf/saxon/expr/Expression;

    iget-object v13, v0, Lnet/sf/saxon/style/XSLNumber;->q0:Lnet/sf/saxon/expr/Expression;

    iget-object v14, v0, Lnet/sf/saxon/style/XSLNumber;->Z:Lnet/sf/saxon/expr/Expression;

    iget-object v15, v0, Lnet/sf/saxon/style/XSLNumber;->t0:Lnet/sf/saxon/expr/number/NumberFormatter;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->Y()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    move/from16 v16, v2

    goto :goto_1

    :cond_2
    move/from16 v16, v3

    :goto_1
    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lnet/sf/saxon/expr/NumberSequenceFormatter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/number/NumberFormatter;Z)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    new-instance v2, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-direct {v2, v1, v3, v3}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/ValueOf;->setIsNumberingInstruction()V

    return-object v2
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 21

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

    move-object v9, v8

    move-object v10, v9

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "start-at"

    const-string v13, "level"

    const-string v14, "count"

    const-string v15, "from"

    move-object/from16 v16, v10

    if-eqz v11, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v10

    move-object/from16 v17, v1

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v9

    invoke-virtual {v11}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/16 v20, -0x1

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v12, "grouping-size"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0xb

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0xa

    goto :goto_1

    :sswitch_2
    const-string v12, "grouping-separator"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x9

    goto :goto_1

    :sswitch_3
    const-string v12, "value"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v12, "lang"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    :goto_1
    move/from16 v20, v1

    goto :goto_2

    :sswitch_8
    const-string v12, "select"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v20, 0x3

    goto :goto_2

    :sswitch_9
    const-string v12, "letter-value"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v20, 0x2

    goto :goto_2

    :sswitch_a
    const-string v12, "ordinal"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/16 v20, 0x1

    goto :goto_2

    :sswitch_b
    const-string v12, "format"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v20, 0x0

    :goto_2
    packed-switch v20, :pswitch_data_0

    invoke-virtual {v0, v10}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_3

    :pswitch_0
    move-object v9, v11

    move-object/from16 v10, v16

    goto :goto_5

    :pswitch_1
    invoke-virtual {v0, v9, v11}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->q0:Lnet/sf/saxon/expr/Expression;

    move-object v10, v9

    goto :goto_4

    :pswitch_2
    move-object v8, v11

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v9, v11}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    move-object v2, v9

    goto :goto_3

    :pswitch_4
    invoke-static {v9}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :pswitch_5
    move-object v4, v9

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v9, v11}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->Z:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :pswitch_7
    move-object v5, v9

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v9, v11}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    move-object v3, v9

    :goto_3
    move-object/from16 v10, v16

    :goto_4
    move-object/from16 v9, v18

    goto :goto_5

    :pswitch_9
    invoke-static {v9}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->Q:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :pswitch_a
    invoke-virtual {v0, v9, v11}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->k0:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :pswitch_b
    invoke-virtual {v0, v9, v11}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    move-object v7, v9

    goto :goto_3

    :goto_5
    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_c
    move-object/from16 v18, v9

    if-eqz v2, :cond_10

    const-string v1, "XTSE0975"

    if-eqz v3, :cond_d

    const-string v2, "The select attribute and value attribute must not both be present"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v4, :cond_e

    const-string v2, "The count attribute and value attribute must not both be present"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz v5, :cond_f

    const-string v2, "The from attribute and value attribute must not both be present"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v6, :cond_10

    const-string v2, "The level attribute and value attribute must not both be present"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v0, v4, v14}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->v:Lnet/sf/saxon/pattern/Pattern;

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v0, v5, v15}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->w:Lnet/sf/saxon/pattern/Pattern;

    :cond_12
    if-nez v6, :cond_13

    const/4 v1, 0x0

    iput v1, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    goto :goto_6

    :cond_13
    const/4 v1, 0x0

    const-string v2, "single"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iput v1, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    goto :goto_6

    :cond_14
    const-string v1, "multiple"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    iput v1, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    goto :goto_6

    :cond_15
    const-string v1, "any"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    iput v1, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    goto :goto_6

    :cond_16
    const-string v1, "single|any|multiple"

    invoke-virtual {v0, v13, v1}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget v1, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    if-nez v1, :cond_17

    iget-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->w:Lnet/sf/saxon/pattern/Pattern;

    if-nez v1, :cond_17

    iget-object v1, v0, Lnet/sf/saxon/style/XSLNumber;->v:Lnet/sf/saxon/pattern/Pattern;

    if-nez v1, :cond_17

    const/4 v1, 0x3

    iput v1, v0, Lnet/sf/saxon/style/XSLNumber;->u:I

    :cond_17
    const-string v1, "1"

    if-eqz v7, :cond_18

    iget-object v2, v0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    instance-of v2, v2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v2, :cond_19

    new-instance v2, Lnet/sf/saxon/expr/number/NumberFormatter;

    invoke-direct {v2}, Lnet/sf/saxon/expr/number/NumberFormatter;-><init>()V

    iput-object v2, v0, Lnet/sf/saxon/style/XSLNumber;->t0:Lnet/sf/saxon/expr/number/NumberFormatter;

    iget-object v3, v0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    check-cast v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/number/NumberFormatter;->prepare(Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    new-instance v2, Lnet/sf/saxon/expr/number/NumberFormatter;

    invoke-direct {v2}, Lnet/sf/saxon/expr/number/NumberFormatter;-><init>()V

    iput-object v2, v0, Lnet/sf/saxon/style/XSLNumber;->t0:Lnet/sf/saxon/expr/number/NumberFormatter;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/number/NumberFormatter;->prepare(Ljava/lang/String;)V

    :cond_19
    :goto_7
    if-eqz v8, :cond_1a

    if-eqz v18, :cond_1a

    invoke-virtual/range {v18 .. v18}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v18

    invoke-virtual {v0, v2, v9}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLNumber;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/style/XSLNumber;->O:Lnet/sf/saxon/expr/Expression;

    :cond_1a
    if-eqz v16, :cond_1b

    const/16 v1, 0x7b

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1c

    const-string v1, "-?[0-9]+(\\s+-?[0-9]+)*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "Invalid format for start-at attribute"

    const-string v2, "XTSE0020"

    invoke-virtual {v0, v1, v2, v12}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lnet/sf/saxon/style/XSLNumber;->q0:Lnet/sf/saxon/expr/Expression;

    :cond_1c
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ba00809 -> :sswitch_b
        -0x47f1458f -> :sswitch_a
        -0x44b66af6 -> :sswitch_9
        -0x3600cb04 -> :sswitch_8
        0x3017aa -> :sswitch_7
        0x3291ee -> :sswitch_6
        0x5a7510f -> :sswitch_5
        0x6219b84 -> :sswitch_4
        0x6ac9171 -> :sswitch_3
        0x152e3a9b -> :sswitch_2
        0x4e7bfd7e -> :sswitch_1
        0x7f3a0e8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    const-string p1, "value"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    const-string p1, "format"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->z:Lnet/sf/saxon/expr/Expression;

    const-string p1, "group-size"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->J:Lnet/sf/saxon/expr/Expression;

    const-string p1, "group-separator"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->O:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->O:Lnet/sf/saxon/expr/Expression;

    const-string p1, "letter-value"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->Q:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->Q:Lnet/sf/saxon/expr/Expression;

    const-string p1, "ordinal"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->k0:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->k0:Lnet/sf/saxon/expr/Expression;

    const-string p1, "lang"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->Z:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->Z:Lnet/sf/saxon/expr/Expression;

    const-string p1, "from"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->w:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->w:Lnet/sf/saxon/pattern/Pattern;

    const-string p1, "count"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->v:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->v:Lnet/sf/saxon/pattern/Pattern;

    const-string p1, "start-at"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLNumber;->q0:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->q0:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->y:Lnet/sf/saxon/expr/Expression;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    const-string v1, "XTTE0990"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/expr/ContextItemExpression;->setErrorCodeForUndefinedContext(Ljava/lang/String;Z)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    const-string v1, "XTTE1000"

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v2, "xsl:number/select"

    const/4 v3, 0x4

    invoke-direct {p1, v3, v2, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLNumber;->x:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_1
    :goto_1
    return-void
.end method
