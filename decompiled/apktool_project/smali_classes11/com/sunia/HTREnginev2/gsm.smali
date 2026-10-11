.class public final synthetic Lcom/sunia/HTREnginev2/gsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/Mode$RuleAction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/SlotManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gsm;->a:Lnet/sf/saxon/expr/instruct/SlotManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gsm;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final processRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gsm;->a:Lnet/sf/saxon/expr/instruct/SlotManager;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gsm;->b:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/trans/SimpleMode;->f(Lnet/sf/saxon/expr/instruct/SlotManager;Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method
