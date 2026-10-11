.class public Lnet/sf/saxon/functions/ConstantFunction;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/ConstantFunction$False;,
        Lnet/sf/saxon/functions/ConstantFunction$True;
    }
.end annotation


# instance fields
.field public value:Lnet/sf/saxon/om/GroundedValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/ConstantFunction;->value:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/ConstantFunction;->value:Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/functions/ConstantFunction;->value:Lnet/sf/saxon/om/GroundedValue;

    instance-of v0, p0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/value/IntegerValue;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lnet/sf/saxon/value/IntegerValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/ConstantFunction;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method
