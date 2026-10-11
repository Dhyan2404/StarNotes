.class public final synthetic Lcom/sunia/HTREnginev2/pmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/IntPredicate;


# instance fields
.field public final synthetic a:Ljava/backport/function/IntPredicate;

.field public final synthetic b:Ljava/backport/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/IntPredicate;Ljava/backport/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pmi;->a:Ljava/backport/function/IntPredicate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pmi;->b:Ljava/backport/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pmi;->a:Ljava/backport/function/IntPredicate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pmi;->b:Ljava/backport/function/IntPredicate;

    invoke-static {v0, p0, p1}, Ljava/backport/function/IntPredicate;->b(Ljava/backport/function/IntPredicate;Ljava/backport/function/IntPredicate;I)Z

    move-result p0

    return p0
.end method
