.class public abstract Lnet/sf/saxon/expr/SystemFunctionCall$Optimized;
.super Lnet/sf/saxon/expr/SystemFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/SystemFunctionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Optimized"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTargetFunction()Lnet/sf/saxon/om/Function;
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method
