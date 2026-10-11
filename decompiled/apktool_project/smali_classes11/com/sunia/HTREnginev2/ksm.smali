.class public final synthetic Lcom/sunia/HTREnginev2/ksm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/Mode$RuleAction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trans/SimpleMode$c;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/SimpleMode$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ksm;->a:Lnet/sf/saxon/trans/SimpleMode$c;

    return-void
.end method


# virtual methods
.method public final processRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ksm;->a:Lnet/sf/saxon/trans/SimpleMode$c;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/SimpleMode$c;->b(Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method
