.class public final synthetic Lcom/sunia/HTREnginev2/b6j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/parser/ExpressionAction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/parser/LoopLifter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/parser/LoopLifter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b6j;->a:Lnet/sf/saxon/expr/parser/LoopLifter;

    iput p2, p0, Lcom/sunia/HTREnginev2/b6j;->b:I

    return-void
.end method


# virtual methods
.method public final process(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b6j;->a:Lnet/sf/saxon/expr/parser/LoopLifter;

    iget p0, p0, Lcom/sunia/HTREnginev2/b6j;->b:I

    invoke-static {v0, p0, p1, p2}, Lnet/sf/saxon/expr/parser/LoopLifter;->a(Lnet/sf/saxon/expr/parser/LoopLifter;ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
