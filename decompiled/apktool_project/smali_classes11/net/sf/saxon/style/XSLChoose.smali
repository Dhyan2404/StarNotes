.class public Lnet/sf/saxon/style/XSLChoose;
.super Lnet/sf/saxon/style/XSLChooseOrSwitch;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLChooseOrSwitch;-><init>()V

    return-void
.end method


# virtual methods
.method public compileConditions(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;[Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/XSLWhen;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/style/XSLWhen;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLWhen;->getCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    aput-object v0, p3, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lnet/sf/saxon/style/XSLOtherwise;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    aput-object v0, p3, p2

    goto :goto_1

    :cond_2
    return-void
.end method
