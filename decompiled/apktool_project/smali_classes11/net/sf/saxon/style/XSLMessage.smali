.class public final Lnet/sf/saxon/style/XSLMessage;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->u:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->x:Lnet/sf/saxon/expr/Expression;

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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    if-nez p2, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->x:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_3

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    const-string p2, "xsl:message (no content)"

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    :cond_3
    iget-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    instance-of p2, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p2, :cond_4

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Q{"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    const-string v0, "error-code"

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    :cond_4
    new-instance p1, Lnet/sf/saxon/expr/instruct/MessageInstr;

    iget-object p2, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->u:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p1, p2, v0, v1}, Lnet/sf/saxon/expr/instruct/MessageInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object p1
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
    .locals 11

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "terminate"

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v5, v10

    goto :goto_2

    :sswitch_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_1
    const-string v4, "error-code"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :sswitch_2
    const-string v4, "select"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_2
    packed-switch v5, :pswitch_data_0

    const-string v4, "http://saxon.sf.net/"

    invoke-interface {v7, v4}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    const-string v4, "saxon:time"

    invoke-virtual {p0, v4, v6}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "format-dateTime(Q{http://saxon.sf.net/}timestamp(),\'[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01].[f,3-3] - \')"

    invoke-virtual {p0, v4, v3}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLMessage;->x:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v7}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLMessage;->u:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v6, v3}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v6, v3}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_6

    const-string v2, "no"

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->u:Lnet/sf/saxon/expr/Expression;

    :cond_6
    sget-object v0, Lnet/sf/saxon/style/StyleElement;->YES_NO:[Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v5, v0}, Lnet/sf/saxon/style/StyleElement;->o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3600cb04 -> :sswitch_2
        0x5ebe0292 -> :sswitch_1
        0x795abe61 -> :sswitch_0
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

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->v:Lnet/sf/saxon/expr/Expression;

    const-string p1, "terminate"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMessage;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->u:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    const-string v0, "Q{http://www.w3.org/2005/xqt-errors}XTMM9000"

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    const-string v0, "error-code"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMessage;->w:Lnet/sf/saxon/expr/Expression;

    :goto_0
    return-void
.end method
