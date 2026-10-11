.class public Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public final a:Lnet/sf/saxon/functions/FunctionLibrary;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/FunctionLibrary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;->a:Lnet/sf/saxon/functions/FunctionLibrary;

    return-void
.end method


# virtual methods
.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 0
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

    iget-object p0, p0, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;->a:Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/sf/saxon/functions/FunctionLibrary;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UserFunctionCall;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p2, :cond_1

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "The function exists, but does not have public visibility"

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

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

    iget-object p0, p0, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;->a:Lnet/sf/saxon/functions/FunctionLibrary;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p2, :cond_0

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;->a:Lnet/sf/saxon/functions/FunctionLibrary;

    instance-of v0, p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq p0, p2, :cond_0

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne p0, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/functions/FunctionLibrary;->isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z

    move-result p0

    return p0
.end method
