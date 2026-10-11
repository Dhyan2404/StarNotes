.class public final synthetic Lcom/sunia/HTREnginev2/g8g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/flwor/OperandProcessor;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lnet/sf/saxon/expr/Binding;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnet/sf/saxon/expr/Binding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g8g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g8g;->b:Lnet/sf/saxon/expr/Binding;

    return-void
.end method


# virtual methods
.method public final processOperand(Lnet/sf/saxon/expr/Operand;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g8g;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g8g;->b:Lnet/sf/saxon/expr/Binding;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->j(Ljava/util/List;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method
