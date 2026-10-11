.class public final synthetic Lcom/sunia/HTREnginev2/g8e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/ConditionalSorter$a;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/parser/ExpressionVisitor;

.field public final synthetic b:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g8e;->a:Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g8e;->b:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g8e;->a:Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g8e;->b:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/sort/ConditionalSorter;->g(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
