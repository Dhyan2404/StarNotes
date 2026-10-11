.class public Lnet/sf/saxon/style/XSLOutputCharacter;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCodePoint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    return p0
.end method

.method public getReplacementString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->v:Ljava/lang/String;

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "string"

    const-string v3, "character"

    const/16 v4, 0x100

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "XTSE0020"

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    const/4 v7, 0x2

    const-string v8, "character attribute must be a single XML character"

    if-eq v2, v7, :cond_0

    invoke-virtual {p0, v8, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isLowSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v8, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput v1, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    goto :goto_0

    :cond_3
    const-string v1, "character attribute must not be zero-length"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v1, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->v:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    iput v4, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    return-void

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->v:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    iput v4, p0, Lnet/sf/saxon/style/XSLOutputCharacter;->u:I

    :cond_8
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/style/XSLCharacterMap;

    if-nez p1, :cond_0

    const-string p1, "xsl:output-character may appear only as a child of xsl:character-map"

    const-string v0, "XTSE0010"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
