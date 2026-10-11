.class public final Lnet/sf/saxon/style/XSLAssert;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAssert;->u:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->isAssertionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    if-nez p2, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    const-string p2, "xsl:message (no content)"

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    instance-of p2, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p2, :cond_3

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Q{"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    const-string v1, "error-code"

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    :cond_3
    new-instance p1, Lnet/sf/saxon/expr/instruct/MessageInstr;

    iget-object p2, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v2, "yes"

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p1, p2, v1, v2}, Lnet/sf/saxon/expr/instruct/MessageInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->setIsAssert(Z)V

    iget-object p2, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    instance-of p2, p2, Lnet/sf/saxon/expr/StringLiteral;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_4
    iget-object p2, p0, Lnet/sf/saxon/style/XSLAssert;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    new-array v1, v0, [Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLAssert;->u:Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "not"

    invoke-static {p0, p2, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/expr/instruct/Choose;

    new-array v1, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p0, v1, v2

    new-array p0, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p0, v2

    invoke-direct {p2, v1, p0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p2

    :cond_5
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
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
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "test"

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "error-code"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "select"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLAssert;->u:Lnet/sf/saxon/expr/Expression;

    move-object v1, v6

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_2
        0x364492 -> :sswitch_1
        0x5ebe0292 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->v:Lnet/sf/saxon/expr/Expression;

    const-string p1, "test"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLAssert;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->u:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v0, "Q{http://www.w3.org/2005/xqt-errors}XTMM9001"

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    const-string v0, "error-code"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLAssert;->w:Lnet/sf/saxon/expr/Expression;

    :goto_0
    return-void
.end method
