.class public Lnet/sf/saxon/style/StylesheetFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public final a:Lnet/sf/saxon/style/StylesheetPackage;

.field public final b:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StylesheetPackage;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->a:Lnet/sf/saxon/style/StylesheetPackage;

    iput-boolean p2, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->b:Z

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->b(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->allocateArgumentEvaluators()V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->setStaticType(Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no available function named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arguments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPST0017"

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 2
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

    iget-object p4, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->a:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p4, p1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p4}, Lnet/sf/saxon/expr/instruct/UserFunction;->isOverrideExtensionFunction()Z

    move-result v1

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->b:Z

    if-eq v1, p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-direct {p0}, Lnet/sf/saxon/expr/UserFunctionCall;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    instance-of p1, p3, Lnet/sf/saxon/style/ExpressionContext;

    if-eqz p1, :cond_2

    move-object p1, p3

    check-cast p1, Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {p1}, Lnet/sf/saxon/style/ExpressionContext;->getStyleElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-static {p3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    new-instance p2, Lcom/sunia/HTREnginev2/h4n;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/h4n;-><init>(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addFixupAction(Lnet/sf/saxon/om/Action;)V

    :cond_2
    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->a:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->a:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->a:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverrideExtensionFunction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->b:Z

    return p0
.end method
