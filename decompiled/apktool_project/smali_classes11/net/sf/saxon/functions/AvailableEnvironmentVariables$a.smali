.class public Lnet/sf/saxon/functions/AvailableEnvironmentVariables$a;
.super Lnet/sf/saxon/expr/SystemFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/AvailableEnvironmentVariables;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lnet/sf/saxon/functions/AvailableEnvironmentVariables;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/AvailableEnvironmentVariables;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/AvailableEnvironmentVariables$a;->p:Lnet/sf/saxon/functions/AvailableEnvironmentVariables;

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/expr/SystemFunctionCall;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method
