.class public Lnet/sf/saxon/style/XSLArrayMember;
.super Lnet/sf/saxon/style/XSLSequence;
.source "SourceFile"


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

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSequence;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/XSLSequence;->setSelectExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath40FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath40FunctionSet;

    move-result-object p1

    const-string p2, "parcel"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p1

    new-array p2, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLSequence;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
