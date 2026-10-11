.class public final synthetic Lcom/sunia/HTREnginev2/w5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/LookupExpression;

.field public final synthetic b:Lnet/sf/saxon/om/GroundedValue;

.field public final synthetic c:Lnet/sf/saxon/Configuration;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/LookupExpression;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w5j;->a:Lnet/sf/saxon/expr/LookupExpression;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w5j;->b:Lnet/sf/saxon/om/GroundedValue;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/w5j;->c:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w5j;->a:Lnet/sf/saxon/expr/LookupExpression;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/w5j;->b:Lnet/sf/saxon/om/GroundedValue;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w5j;->c:Lnet/sf/saxon/Configuration;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->i(Lnet/sf/saxon/expr/LookupExpression;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
