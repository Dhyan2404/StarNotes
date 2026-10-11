.class public Lnet/sf/saxon/style/XSLAnalyzeString;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Lnet/sf/saxon/style/StyleElement;

.field public y:Lnet/sf/saxon/style/StyleElement;

.field public z:Lnet/sf/saxon/regex/RegularExpression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "XTDE1145"

    const-string v1, "flags"

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAnalyzeString;->b0()V

    return-void
.end method

.method public final a0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "XTDE1140"

    const-string v1, "regex"

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLAnalyzeString;->b0()V

    return-void
.end method

.method public final b0()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const-string v1, "x"

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    const-string v2, ""

    const-string v3, "XP20"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/sf/saxon/Configuration;->compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->z:Lnet/sf/saxon/regex/RegularExpression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->x:Lnet/sf/saxon/style/StyleElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->y:Lnet/sf/saxon/style/StyleElement;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    :try_start_0
    new-instance p2, Lnet/sf/saxon/expr/instruct/AnalyzeString;

    iget-object v4, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->u:Lnet/sf/saxon/expr/Expression;

    iget-object v5, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->v:Lnet/sf/saxon/expr/Expression;

    iget-object v6, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    move-object v7, v0

    :goto_2
    if-nez p1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    move-object v8, p1

    :goto_3
    iget-object v9, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->z:Lnet/sf/saxon/regex/RegularExpression;

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lnet/sf/saxon/expr/instruct/AnalyzeString;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/regex/RegularExpression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

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

.method public mayContainFallback()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 13

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "regex"

    const-string v7, "select"

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, -0x1

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "flags"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    packed-switch v12, :pswitch_data_0

    invoke-virtual {p0, v8}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v10, v5}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->v:Lnet/sf/saxon/expr/Expression;

    move-object v3, v10

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v10, v5}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    move-object v4, v10

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v10, v5}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->u:Lnet/sf/saxon/expr/Expression;

    move-object v2, v10

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->u:Lnet/sf/saxon/expr/Expression;

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v0, "xxx"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->v:Lnet/sf/saxon/expr/Expression;

    :cond_5
    if-nez v4, :cond_6

    const-string v0, ""

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->v:Lnet/sf/saxon/expr/Expression;

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_9

    :try_start_0
    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_7

    const-string v4, "XP30"

    goto :goto_2

    :cond_7
    const-string v4, "XP20"

    :goto_2
    invoke-virtual {v3, v0, v1, v4, v2}, Lnet/sf/saxon/Configuration;->compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->z:Lnet/sf/saxon/regex/RegularExpression;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "FORX0001"

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in regular expression flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLAnalyzeString;->Z(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in regular expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLAnalyzeString;->a0(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_2
        0x5cfee87 -> :sswitch_1
        0x675f047 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v1, Lnet/sf/saxon/style/XSLFallback;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/style/XSLMatchingSubstring;

    const-string v3, "XTSE0010"

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "matching-substring"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->x:Lnet/sf/saxon/style/StyleElement;

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->y:Lnet/sf/saxon/style/StyleElement;

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v2, "xsl:matching-substring element must come first"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->x:Lnet/sf/saxon/style/StyleElement;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->y:Lnet/sf/saxon/style/StyleElement;

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const-string v2, "xsl:non-matching-substring cannot appear here"

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->y:Lnet/sf/saxon/style/StyleElement;

    goto :goto_0

    :cond_6
    const-string v1, "Only xsl:matching-substring and xsl:non-matching-substring are allowed here"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->x:Lnet/sf/saxon/style/StyleElement;

    if-nez p1, :cond_8

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->y:Lnet/sf/saxon/style/StyleElement;

    if-nez p1, :cond_8

    const-string p1, "At least one xsl:matching-substring or xsl:non-matching-substring element must be present"

    const-string v0, "XTSE1130"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "regex"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->v:Lnet/sf/saxon/expr/Expression;

    const-string p1, "flags"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAnalyzeString;->w:Lnet/sf/saxon/expr/Expression;

    return-void
.end method
