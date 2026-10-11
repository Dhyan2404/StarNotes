.class public Lnet/sf/saxon/style/XSLArray;
.super Lnet/sf/saxon/style/XSLSequence;
.source "SourceFile"


# instance fields
.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSequence;-><init>()V

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

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->requireXslt40(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "saxon:array requires a Saxon-PE or -EE license"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSequence;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLSequence;->setSelectExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLArray;->v:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object p1

    const-string v0, "of"

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p1

    new-array p2, p2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSequence;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object p1

    const-string v0, "_from-sequence"

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p1

    new-array p2, p2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSequence;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSequence;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public prepareAttributes()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "select"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v3, v1}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/XSLSequence;->setSelectExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    const-string v1, "composite"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLArray;->v:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    return-void
.end method
