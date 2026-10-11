.class public final synthetic Lcom/sunia/HTREnginev2/hsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/Mode$RuleAction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trans/SimpleMode;

.field public final synthetic b:Lnet/sf/saxon/trace/ExpressionPresenter;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hsm;->a:Lnet/sf/saxon/trans/SimpleMode;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hsm;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    return-void
.end method


# virtual methods
.method public final processRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hsm;->a:Lnet/sf/saxon/trans/SimpleMode;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hsm;->b:Lnet/sf/saxon/trace/ExpressionPresenter;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/trans/SimpleMode;->h(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method
