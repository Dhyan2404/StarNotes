.class public final Lnet/sf/saxon/style/XSLCopyOf;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Lnet/sf/saxon/type/SchemaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->x:I

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 6

    new-instance p2, Lnet/sf/saxon/expr/instruct/CopyOf;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLCopyOf;->u:Lnet/sf/saxon/expr/Expression;

    iget-boolean v2, p0, Lnet/sf/saxon/style/XSLCopyOf;->v:Z

    iget v3, p0, Lnet/sf/saxon/style/XSLCopyOf;->x:I

    iget-object v4, p0, Lnet/sf/saxon/style/XSLCopyOf;->y:Lnet/sf/saxon/type/SchemaType;

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLCopyOf;->w:Z

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyAccumulators(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->isSchemaAware()Z

    move-result p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setSchemaAware(Z)V

    return-object p2
.end method

.method public isInstruction()Z
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

    move-object v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "copy-accumulators"

    const-string v8, "copy-namespaces"

    const-string v9, "select"

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v10

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, v11, v6}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLCopyOf;->u:Lnet/sf/saxon/expr/Expression;

    move-object v1, v11

    goto :goto_0

    :cond_0
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v6, "validation"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v6, "type"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-interface {v10}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "read-once"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "http://saxon.sf.net/"

    invoke-interface {v10, v6}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "The saxon:read-once attribute is no longer available - use xsl:stream"

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v10}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p0, v9}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    if-nez v2, :cond_8

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->w:Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v7, v2}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLCopyOf;->w:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Copying accumulators is pointless when the copied element is immediately attached to a new parent, since that action will lose the accumulator values"

    const-string v2, "SXWN9017"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->w:Z

    :cond_9
    :goto_1
    if-nez v3, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->v:Z

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v8, v3}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->v:Z

    :goto_2
    if-eqz v4, :cond_b

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->x:I

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->x:I

    :goto_3
    if-eqz v5, :cond_d

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->y:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v1, "XTSE1660"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 v0, 0x8

    iput v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->x:I

    :cond_d
    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    const-string v0, "The @validation and @type attributes are mutually exclusive"

    const-string v1, "XTSE1505"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLCopyOf;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLCopyOf;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method
