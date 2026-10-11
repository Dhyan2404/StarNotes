.class public final synthetic Lcom/sunia/HTREnginev2/smi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/z/IntPredicateProxy;

.field public final synthetic b:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/smi;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/smi;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/smi;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/smi;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->b(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;I)Z

    move-result p0

    return p0
.end method
