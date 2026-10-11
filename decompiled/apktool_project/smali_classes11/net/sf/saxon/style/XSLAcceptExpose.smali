.class public abstract Lnet/sf/saxon/style/XSLAcceptExpose;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/ComponentTest;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/ComponentTest;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lnet/sf/saxon/trans/Visibility;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->u:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->w:Lnet/sf/saxon/trans/Visibility;

    return-void
.end method


# virtual methods
.method public final Z(ILnet/sf/saxon/pattern/QNameTest;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance v1, Lnet/sf/saxon/trans/ComponentTest;

    const/16 v2, 0xa0

    invoke-direct {v1, v2, p2, v0}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance v1, Lnet/sf/saxon/trans/ComponentTest;

    const/16 v2, 0xd2

    invoke-direct {v1, v2, p2, v0}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance v1, Lnet/sf/saxon/trans/ComponentTest;

    const/16 v2, 0xda

    invoke-direct {v1, v2, p2, v0}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance v1, Lnet/sf/saxon/trans/ComponentTest;

    const/16 v2, 0x8a

    invoke-direct {v1, v2, p2, v0}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance p1, Lnet/sf/saxon/trans/ComponentTest;

    const/16 v1, 0xb4

    invoke-direct {p1, v1, p2, v0}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance v1, Lnet/sf/saxon/trans/ComponentTest;

    invoke-direct {v1, p1, p2, v0}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getExplicitComponentTests()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/ComponentTest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->prepareAttributes()V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->u:Ljava/util/Set;

    return-object p0
.end method

.method public getVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->w:Lnet/sf/saxon/trans/Visibility;

    return-object p0
.end method

.method public getWildcardComponentTests()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/ComponentTest;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAcceptExpose;->prepareAttributes()V

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->w:Lnet/sf/saxon/trans/Visibility;

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "visibility"

    const-string v8, "component"

    const/4 v9, 0x0

    const/4 v10, -0x1

    const-string v13, "names"

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v14

    invoke-interface {v14}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move v9, v10

    goto :goto_2

    :sswitch_0
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    packed-switch v9, :pswitch_data_0

    invoke-virtual {v0, v14}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v1, ""

    if-nez v3, :cond_5

    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iput-object v3, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->w:Lnet/sf/saxon/trans/Visibility;

    goto :goto_4

    :cond_5
    instance-of v6, v0, Lnet/sf/saxon/style/XSLAccept;

    if-eqz v6, :cond_6

    const-string v6, "ha"

    goto :goto_3

    :cond_6
    move-object v6, v1

    :goto_3
    invoke-virtual {v0, v3, v6}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    iput-object v3, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->w:Lnet/sf/saxon/trans/Visibility;

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-ne v3, v6, :cond_7

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iput-object v3, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->w:Lnet/sf/saxon/trans/Visibility;

    :cond_7
    :goto_4
    const-string v3, "*"

    const/16 v6, 0xa0

    const-string v7, "XTSE0020"

    if-nez v4, :cond_8

    invoke-virtual {v0, v8}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :pswitch_3
    move v4, v6

    goto/16 :goto_7

    :cond_8
    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_5
    move v4, v10

    goto :goto_6

    :sswitch_3
    const-string v8, "function"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v4, 0x5

    goto :goto_6

    :sswitch_4
    const-string v8, "mode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x4

    goto :goto_6

    :sswitch_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x3

    goto :goto_6

    :sswitch_6
    const-string v8, "variable"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x2

    goto :goto_6

    :sswitch_7
    const-string v8, "template"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    goto :goto_6

    :sswitch_8
    const-string v8, "attribute-set"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    move v4, v9

    :goto_6
    packed-switch v4, :pswitch_data_1

    const-string v1, "The component type is not one of the allowed names (function, template, variable, attribute-set, or mode)"

    invoke-virtual {v0, v1, v7}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    const/16 v4, 0xb4

    goto :goto_7

    :pswitch_5
    move v4, v10

    goto :goto_7

    :pswitch_6
    const/16 v4, 0xda

    goto :goto_7

    :pswitch_7
    const/16 v4, 0xd2

    goto :goto_7

    :pswitch_8
    const/16 v4, 0x8a

    :goto_7
    if-nez v5, :cond_f

    invoke-virtual {v0, v13}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    move-object v5, v1

    :cond_f
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v8, " \t\r\n"

    invoke-direct {v1, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x23

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const-string v14, "XTSE3032"

    const-string v15, "XTSE3022"

    const-string v11, "XTSE3020"

    const-string v12, "When component=\'*\' is specified, all names must be wildcards"

    if-lez v8, :cond_13

    const/16 v2, 0x7d

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_13

    if-ne v4, v10, :cond_11

    instance-of v2, v0, Lnet/sf/saxon/style/XSLAccept;

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    move-object v14, v15

    :goto_9
    invoke-virtual {v0, v12, v14, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    if-ne v4, v6, :cond_12

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11, v13}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    new-instance v11, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v11, v15, v12, v2, v14}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    add-int/lit8 v8, v8, 0x1

    :try_start_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed function arity in \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    :goto_a
    iget-object v5, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->u:Ljava/util/Set;

    new-instance v8, Lnet/sf/saxon/trans/ComponentTest;

    invoke-direct {v8, v4, v11, v2}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    const-string v2, "Cannot specify arity for components other than functions"

    invoke-virtual {v0, v2, v11, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lnet/sf/saxon/style/XSLAcceptExpose;->Z(ILnet/sf/saxon/pattern/QNameTest;)V

    :goto_b
    const/4 v2, 0x0

    const/4 v8, 0x2

    :goto_c
    const/4 v15, 0x1

    goto/16 :goto_8

    :cond_14
    const-string v2, ":*"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_15

    const-string v2, "No prefix before \':*\'"

    invoke-virtual {v0, v2, v7, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v5, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Undeclared prefix "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "http://ns.saxonica.com/anonymous-type"

    :cond_16
    new-instance v2, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v8

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11, v5}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Lnet/sf/saxon/style/XSLAcceptExpose;->Z(ILnet/sf/saxon/pattern/QNameTest;)V

    goto :goto_b

    :cond_17
    const-string v2, "Q{"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "}*"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x2

    sub-int/2addr v2, v8

    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v8

    const/4 v11, 0x1

    invoke-direct {v5, v8, v11, v2}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    iget-object v2, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->v:Ljava/util/Set;

    new-instance v8, Lnet/sf/saxon/trans/ComponentTest;

    invoke-direct {v8, v4, v5, v10}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_18
    const-string v2, "*:"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_19

    const-string v2, "No local name after \'*:\'"

    invoke-virtual {v0, v2, v7, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v5, v11, v12, v2}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/style/XSLAcceptExpose;->Z(ILnet/sf/saxon/pattern/QNameTest;)V

    :goto_d
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_1a
    const/4 v8, 0x2

    if-ne v4, v10, :cond_1c

    instance-of v2, v0, Lnet/sf/saxon/style/XSLAccept;

    if-eqz v2, :cond_1b

    goto :goto_e

    :cond_1b
    move-object v14, v15

    :goto_e
    invoke-virtual {v0, v12, v14, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1c
    if-ne v4, v6, :cond_1d

    const-string v2, "When the name identifies a function, the arity must be given (XSLT 3.0 erratum E36)"

    invoke-virtual {v0, v2, v11, v13}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v13}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    new-instance v11, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v11, v15, v12, v5, v14}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    iget-object v5, v0, Lnet/sf/saxon/style/XSLAcceptExpose;->u:Ljava/util/Set;

    new-instance v12, Lnet/sf/saxon/trans/ComponentTest;

    invoke-direct {v12, v4, v11, v10}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5370e303 -> :sswitch_2
        0x63bd748 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x5670d24f -> :sswitch_8
        -0x4ec53386 -> :sswitch_7
        -0x4a7b2d84 -> :sswitch_6
        0x2a -> :sswitch_5
        0x3339a3 -> :sswitch_4
        0x524f73d8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
