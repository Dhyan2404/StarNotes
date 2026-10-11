.class public final synthetic Lcom/sunia/HTREnginev2/q5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/om/Item;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q5j;->a:Lnet/sf/saxon/om/Item;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q5j;->a:Lnet/sf/saxon/om/Item;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->m(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
