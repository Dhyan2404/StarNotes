.class public final Lnet/sf/saxon/style/XSLForEachGroup;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public J:Lnet/sf/saxon/expr/Expression;

.field public O:Z

.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Lnet/sf/saxon/expr/Expression;

.field public y:Lnet/sf/saxon/pattern/Pattern;

.field public z:Lnet/sf/saxon/pattern/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->z:Lnet/sf/saxon/pattern/Pattern;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->O:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->w(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The collation name \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' has not been defined"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "XTDE1110"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v8, v0

    :goto_1
    move v7, v3

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_3

    move-object v8, v0

    move v7, v1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_4

    const/4 v4, 0x2

    :goto_2
    move-object v8, v0

    move v7, v4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->z:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_5

    const/4 v4, 0x3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_6

    const/4 v4, 0x4

    goto :goto_2

    :cond_6
    move-object v8, v2

    goto :goto_1

    :goto_3
    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_7
    :try_start_0
    new-instance v12, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    iget-object v5, p0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iget-object v10, p0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->M(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lnet/sf/saxon/expr/instruct/ForEachGroup;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;BLnet/sf/saxon/expr/Expression;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result p1

    const/16 p2, 0x9f

    if-ne p1, p2, :cond_8

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    invoke-virtual {v12, v1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->setIsInFork(Z)V

    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLForEachGroup;->O:Z

    invoke-virtual {v12, p1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->setComposite(Z)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-object v2
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

.method public mayContainSequenceConstructor()Z
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

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "group-ending-with"

    const-string v10, "select"

    const-string v11, "group-starting-with"

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v14

    invoke-interface {v14}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    const-string v13, "break-when"

    move-object/from16 v17, v1

    const-string v1, "array"

    move-object/from16 v18, v7

    const-string v7, "map"

    move-object/from16 v19, v6

    const-string v6, "composite"

    const/16 v20, -0x1

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v9, 0x9

    goto :goto_1

    :sswitch_1
    const-string v9, "collation"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    const/16 v9, 0x8

    goto :goto_1

    :sswitch_2
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_3
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_4
    const-string v9, "group-adjacent"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_5
    const-string v9, "group-by"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_6
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_7
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x2

    :goto_1
    move/from16 v20, v9

    goto :goto_2

    :sswitch_8
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    const/16 v20, 0x1

    goto :goto_2

    :sswitch_9
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    const/16 v20, 0x0

    :goto_2
    packed-switch v20, :pswitch_data_0

    invoke-virtual {v0, v14}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_3

    :pswitch_0
    move-object v5, v12

    goto/16 :goto_3

    :pswitch_1
    invoke-static {v12}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iput-object v6, v0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    move-object v7, v1

    goto :goto_4

    :pswitch_2
    move-object v4, v12

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v13}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "function($group as item()*, $next as item()) as Q{http://www.w3.org/2001/XMLSchema}boolean { Q{http://www.w3.org/2005/xpath-functions}boolean("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") }"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iput-object v6, v0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;

    move-object v6, v1

    move-object/from16 v7, v18

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0, v12, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    move-object v3, v12

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v12, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    move-object v2, v12

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->arrayToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->mapToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v12, v8}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_3

    :pswitch_9
    invoke-virtual {v0, v6, v12}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->O:Z

    :goto_3
    move-object/from16 v7, v18

    :goto_4
    move-object/from16 v6, v19

    :goto_5
    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_a
    move-object/from16 v19, v6

    move-object/from16 v18, v7

    iget-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v1, :cond_c

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v1

    const/16 v6, 0x28

    if-lt v1, v6, :cond_b

    const-string v1, "One of the attributes select|array|map must be present"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v10}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_c
    :goto_6
    if-nez v2, :cond_d

    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    const/4 v1, 0x1

    :goto_7
    if-nez v3, :cond_e

    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    const/4 v2, 0x1

    :goto_8
    add-int/2addr v1, v2

    if-nez v4, :cond_f

    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    const/4 v2, 0x1

    :goto_9
    add-int/2addr v1, v2

    if-nez v5, :cond_10

    const/4 v2, 0x0

    goto :goto_a

    :cond_10
    const/4 v2, 0x1

    :goto_a
    add-int/2addr v1, v2

    if-nez v19, :cond_11

    const/4 v12, 0x0

    goto :goto_b

    :cond_11
    const/4 v12, 0x1

    :goto_b
    add-int/2addr v1, v12

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    const-string v1, "Exactly one of the attributes group-by, group-adjacent, group-starting-with, and group-ending-with must be specified"

    const-string v2, "XTSE1080"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v0, v4, v11}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v0, v5, v9}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/style/XSLForEachGroup;->z:Lnet/sf/saxon/pattern/Pattern;

    :cond_14
    const-string v1, "XTSE1090"

    if-eqz v18, :cond_16

    iget-object v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    if-nez v2, :cond_15

    iget-object v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v2, :cond_15

    const-string v2, "A collation may be specified only if group-by or group-adjacent is specified"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    iget-object v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    instance-of v3, v2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v3, :cond_17

    check-cast v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collation name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not a valid URI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XTDE1110"

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    const-string v3, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    goto :goto_c

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v3, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lnet/sf/saxon/style/XSLForEachGroup;->J:Lnet/sf/saxon/expr/Expression;

    :cond_17
    :goto_c
    iget-boolean v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->O:Z

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    if-nez v2, :cond_18

    iget-object v2, v0, Lnet/sf/saxon/style/XSLForEachGroup;->z:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v2, :cond_1a

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The composite attribute cannot be used with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    if-nez v3, :cond_19

    const-string v11, "grouping-ending-with"

    :cond_19
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x536e8d79 -> :sswitch_9
        -0x3600cb04 -> :sswitch_8
        0x1a55c -> :sswitch_7
        0x58c7259 -> :sswitch_6
        0x1e2dba65 -> :sswitch_5
        0x29f2b4d0 -> :sswitch_4
        0x4af23b48 -> :sswitch_3
        0x6a47b765 -> :sswitch_2
        0x7012ff89 -> :sswitch_1
        0x749c975e -> :sswitch_0
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->p(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    const-string v1, "select"

    iget-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    const-string v4, "group-by"

    invoke-virtual {p0, v4, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    :try_start_0
    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "xsl:for-each-group/group-by"

    invoke-direct {v2, v3, v4, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4, v5, v2, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->v:Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    const-string v4, "XTTE1100"

    if-eqz v2, :cond_2

    const-string v5, "group-adjacent"

    invoke-virtual {p0, v5, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    :try_start_1
    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v5, "xsl:for-each-group/group-adjacent"

    invoke-direct {v2, v3, v5, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;

    iget-boolean v5, p0, Lnet/sf/saxon/style/XSLForEachGroup;->O:Z

    if-eqz v5, :cond_1

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    goto :goto_0

    :cond_1
    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    :goto_0
    invoke-virtual {v0, v4, v5, v2, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->w:Lnet/sf/saxon/expr/Expression;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;

    if-eqz v2, :cond_3

    const-string v5, "break-when"

    invoke-virtual {p0, v5, v2}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;

    :try_start_2
    new-instance v2, Lnet/sf/saxon/type/SpecificFunctionType;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/sf/saxon/value/SequenceType;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    aput-object v6, v5, p1

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v2, v5, v6}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v5, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v6, "xsl:for-each-group/break-when"

    invoke-direct {v5, v3, v6, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;

    const/16 v6, 0x4000

    invoke-static {v2, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v5, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->x:Lnet/sf/saxon/expr/Expression;
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_3
    :goto_1
    const-string v2, "group-starting-with"

    iget-object v4, p0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    const-string v2, "group-ending-with"

    iget-object v4, p0, Lnet/sf/saxon/style/XSLForEachGroup;->z:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLForEachGroup;->z:Lnet/sf/saxon/pattern/Pattern;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    if-nez v4, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v2

    const/16 v4, 0x1e

    if-ge v2, v4, :cond_6

    :try_start_3
    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "xsl:for-each-group/select"

    invoke-direct {v2, v3, v4, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string p1, "XTTE1120"

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, p1, v3, v2, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLForEachGroup;->u:Lnet/sf/saxon/expr/Expression;
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLForEachGroup;->y:Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_5

    const-string v0, "With group-starting-with attribute: "

    goto :goto_2

    :cond_5
    const-string v0, "With group-ending-with attribute: "

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "An empty xsl:for-each-group instruction has no effect"

    const-string v0, "SXWN9009"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
