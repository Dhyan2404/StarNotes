.class public final synthetic Lcom/sunia/HTREnginev2/jsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/Mode$RuleAction;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jsm;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final processRule(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jsm;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/SimpleMode;->j(Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method
