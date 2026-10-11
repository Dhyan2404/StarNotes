.class public Lnet/sf/saxon/style/XSLOriginalLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# static fields
.field public static XSL_ORIGINAL:Lnet/sf/saxon/om/StructuredQName;

.field public static final a:Lnet/sf/saxon/style/XSLOriginalLibrary;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/style/XSLOriginalLibrary;

    invoke-direct {v0}, Lnet/sf/saxon/style/XSLOriginalLibrary;-><init>()V

    sput-object v0, Lnet/sf/saxon/style/XSLOriginalLibrary;->a:Lnet/sf/saxon/style/XSLOriginalLibrary;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "original"

    const-string v3, "xsl"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/style/XSLOriginalLibrary;->XSL_ORIGINAL:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/style/XSLOriginalLibrary;
    .locals 1

    sget-object v0, Lnet/sf/saxon/style/XSLOriginalLibrary;->a:Lnet/sf/saxon/style/XSLOriginalLibrary;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName$F;",
            "[",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/StaticContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/style/XSLOriginalLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentKind()I

    move-result p0

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string p1, "original"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    instance-of p0, p2, Lnet/sf/saxon/style/ExpressionContext;

    if-eqz p0, :cond_3

    check-cast p2, Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {p2}, Lnet/sf/saxon/style/ExpressionContext;->getStyleElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lnet/sf/saxon/style/XSLFunction;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/style/StyleElement;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lnet/sf/saxon/style/StyleElement;

    goto :goto_0

    :cond_1
    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/style/XSLFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/XSLOverride;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLUsePackage;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/instruct/OriginalFunction;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/OriginalFunction;-><init>(Lnet/sf/saxon/expr/Component;)V

    return-object p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist in used package"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE3058"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v1
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
