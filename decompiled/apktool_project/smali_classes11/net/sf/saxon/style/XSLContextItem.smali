.class public Lnet/sf/saxon/style/XSLContextItem;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/type/ItemType;

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLContextItem;->u:Lnet/sf/saxon/type/ItemType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLContextItem;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLContextItem;->w:Z

    return-void
.end method

.method public static synthetic Z(Lnet/sf/saxon/style/XSLContextItem;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/style/XSLContextItem;->a0(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic a0(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "xsl:context-item must be the first child of xsl:template"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLContextItem;->u:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public isAbsentFocus()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLContextItem;->w:Z

    return p0
.end method

.method public isMayBeOmitted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLContextItem;->v:Z

    return p0
.end method

.method public prepareAttributes()V
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "use"

    const-string v5, "as"

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v5}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v3

    const/16 v5, 0x4000

    if-eq v3, v5, :cond_3

    const-string v0, "The xsl:context-item/@use attribute must be an item type (no occurrence indicator allowed)"

    const-string v1, "XTSE0020"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLContextItem;->u:Lnet/sf/saxon/type/ItemType;

    :cond_4
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "optional"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v0, "required"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    goto :goto_2

    :sswitch_2
    const-string v0, "absent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move v6, v5

    :goto_2
    packed-switch v6, :pswitch_data_0

    const-string v0, "required|optional|absent"

    invoke-virtual {p0, v4, v0}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    iput-boolean v5, p0, Lnet/sf/saxon/style/XSLContextItem;->v:Z

    goto :goto_3

    :pswitch_1
    iput-boolean v3, p0, Lnet/sf/saxon/style/XSLContextItem;->w:Z

    :cond_8
    :goto_3
    :pswitch_2
    if-eqz v1, :cond_9

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLContextItem;->w:Z

    if-eqz v0, :cond_9

    const-string v0, "The \'as\' attribute must be omitted when use=\'absent\' is specified"

    const-string v1, "XTSE3089"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54df1cc7 -> :sswitch_2
        -0x176ed461 -> :sswitch_1
        -0x4b5b4a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/style/XSLTemplate;

    if-nez p1, :cond_0

    const-string p1, "xsl:context-item can appear only as a child of xsl:template"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLContextItem;->v:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "xsl:context-item appearing in an xsl:template declaration with no name attribute must specify use=required"

    const-string v0, "XTSE0020"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLTemplate;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLContextItem;->u:Lnet/sf/saxon/type/ItemType;

    iget-boolean v1, p0, Lnet/sf/saxon/style/XSLContextItem;->v:Z

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLContextItem;->w:Z

    invoke-virtual {p1, v0, v1, v2}, Lnet/sf/saxon/style/XSLTemplate;->setContextItemRequirements(Lnet/sf/saxon/type/ItemType;ZZ)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/umo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/umo;-><init>(Lnet/sf/saxon/style/XSLContextItem;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method
