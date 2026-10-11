.class public final synthetic Lcom/sunia/HTREnginev2/poj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/trans/rules/Rule;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/poj;->e:Lnet/sf/saxon/trans/rules/Rule;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/poj;->e:Lnet/sf/saxon/trans/rules/Rule;

    check-cast p1, Lnet/sf/saxon/trans/rules/Rule;

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/Mode;->b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Z

    move-result p0

    return p0
.end method
