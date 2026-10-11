.class public final synthetic Lcom/sunia/HTREnginev2/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/ma/arrays/ArrayItem;

.field public final synthetic b:Lnet/sf/saxon/z/IntSet;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/z/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cf;->a:Lnet/sf/saxon/ma/arrays/ArrayItem;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cf;->b:Lnet/sf/saxon/z/IntSet;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cf;->a:Lnet/sf/saxon/ma/arrays/ArrayItem;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cf;->b:Lnet/sf/saxon/z/IntSet;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayRemove;->a(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/z/IntSet;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
