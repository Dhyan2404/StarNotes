.class public final synthetic Lcom/sunia/HTREnginev2/o8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;

.field public final synthetic b:Lnet/sf/saxon/value/AtomicValue;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o8j;->a:Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/o8j;->b:Lnet/sf/saxon/value/AtomicValue;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/o8j;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o8j;->a:Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/o8j;->b:Lnet/sf/saxon/value/AtomicValue;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o8j;->c:Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;->a(Lnet/sf/saxon/ma/map/MapFunctionSet$MapFind;Lnet/sf/saxon/value/AtomicValue;Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
