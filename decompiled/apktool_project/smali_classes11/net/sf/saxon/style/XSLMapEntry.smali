.class public Lnet/sf/saxon/style/XSLMapEntry;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMapEntry;->u:Lnet/sf/saxon/expr/Expression;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

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

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    :cond_0
    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object p1

    const-string p2, "entry"

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p1

    new-array p2, v0, [Lnet/sf/saxon/expr/Expression;

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMapEntry;->u:Lnet/sf/saxon/expr/Expression;

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/lib/Feature;->STRICT_STREAMABILITY:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lnet/sf/saxon/expr/instruct/SequenceInstr;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/SequenceInstr;-><init>(Lnet/sf/saxon/expr/Expression;)V

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public getReturnedItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

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
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "key"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/XSLMapEntry;->u:Lnet/sf/saxon/expr/Expression;

    move-object v1, v6

    goto :goto_0

    :cond_0
    const-string v3, "select"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6, v2}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "key"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMapEntry;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMapEntry;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "select"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLMapEntry;->v:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_1

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

    const-string p1, "An xsl:map-entry element with a select attribute must be empty"

    const-string v0, "XTSE3280"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
