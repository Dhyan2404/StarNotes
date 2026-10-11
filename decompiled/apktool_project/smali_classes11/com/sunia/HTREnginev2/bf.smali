.class public final synthetic Lcom/sunia/HTREnginev2/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bf;->a:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bf;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bf;->a:Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bf;->b:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;->a(Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
