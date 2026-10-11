.class public final synthetic Lcom/sunia/HTREnginev2/a3g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/parser/ExpressionAction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->d(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
