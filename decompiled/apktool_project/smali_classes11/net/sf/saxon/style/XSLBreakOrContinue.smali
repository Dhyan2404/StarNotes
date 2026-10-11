.class public abstract Lnet/sf/saxon/style/XSLBreakOrContinue;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field protected xslIterate:Lnet/sf/saxon/style/XSLIterate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    return-void
.end method


# virtual methods
.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validatePosition()V
    .locals 5

    const/4 v0, 0x1

    move-object v1, p0

    :cond_0
    :goto_0
    instance-of v2, v1, Lnet/sf/saxon/style/XSLWhen;

    if-nez v2, :cond_4

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    instance-of v4, v3, Lnet/sf/saxon/style/XSLFallback;

    if-nez v4, :cond_1

    instance-of v3, v3, Lnet/sf/saxon/style/XSLCatch;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLIterate;

    const-string v3, "XTSE3120"

    if-eqz v2, :cond_6

    check-cast v1, Lnet/sf/saxon/style/XSLIterate;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLBreakOrContinue;->xslIterate:Lnet/sf/saxon/style/XSLIterate;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be the last instruction in the xsl:iterate loop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    instance-of v2, v1, Lnet/sf/saxon/style/XSLTry;

    if-nez v2, :cond_0

    instance-of v2, v1, Lnet/sf/saxon/style/XSLCatch;

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    instance-of v2, v1, Lnet/sf/saxon/style/XSLWhen;

    if-nez v2, :cond_0

    instance-of v2, v1, Lnet/sf/saxon/style/XSLOtherwise;

    if-nez v2, :cond_0

    instance-of v2, v1, Lnet/sf/saxon/style/XSLIf;

    if-nez v2, :cond_0

    instance-of v2, v1, Lnet/sf/saxon/style/XSLChoose;

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed at outermost level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed within "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
