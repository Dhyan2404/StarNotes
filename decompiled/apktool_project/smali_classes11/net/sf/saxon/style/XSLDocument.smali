.class public Lnet/sf/saxon/style/XSLDocument;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:I

.field public v:Lnet/sf/saxon/type/SchemaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lnet/sf/saxon/style/XSLDocument;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLDocument;->v:Lnet/sf/saxon/type/SchemaType;

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

    new-instance v0, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/instruct/DocumentInstr;-><init>(ZLnet/sf/saxon/str/UnicodeString;)V

    iget v1, p0, Lnet/sf/saxon/style/XSLDocument;->u:I

    iget-object v2, p0, Lnet/sf/saxon/style/XSLDocument;->v:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object v0
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
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v6, "validation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLDocument;->u:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLDocument;->u:I

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v3, "XTSE1660"

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLDocument;->v:Lnet/sf/saxon/type/SchemaType;

    const/16 v0, 0x8

    iput v0, p0, Lnet/sf/saxon/style/XSLDocument;->u:I

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const-string v0, "The @validation and @type attributes are mutually exclusive"

    const-string v1, "XTSE1505"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
