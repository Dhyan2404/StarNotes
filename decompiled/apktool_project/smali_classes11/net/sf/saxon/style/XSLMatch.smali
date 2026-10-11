.class public Lnet/sf/saxon/style/XSLMatch;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/pattern/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

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

    new-instance p1, Lnet/sf/saxon/expr/PatternMatchExpression;

    iget-object p2, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMatch;->v:Lnet/sf/saxon/pattern/Pattern;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/expr/PatternMatchExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;)V

    return-object p1
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    return-object p0
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

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareAttributes()V
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "pattern"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "select"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4, v2}, Lnet/sf/saxon/style/StyleElement;->L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLMatch;->v:Lnet/sf/saxon/pattern/Pattern;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_3

    new-instance v0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/style/XSLMatch;->v:Lnet/sf/saxon/pattern/Pattern;

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/pattern/ItemTypePattern;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/ItemTypePattern;-><init>(Lnet/sf/saxon/type/ItemType;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMatch;->v:Lnet/sf/saxon/pattern/Pattern;

    :cond_4
    return-void
.end method

.method public setSelectExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v0, v0, Lnet/sf/saxon/style/XSLFallback;

    if-nez v0, :cond_0

    const-string p1, "Only xsl:fallback is allowed within xsl:match"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_1
    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMatch;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "pattern"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMatch;->v:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMatch;->v:Lnet/sf/saxon/pattern/Pattern;

    return-void
.end method
