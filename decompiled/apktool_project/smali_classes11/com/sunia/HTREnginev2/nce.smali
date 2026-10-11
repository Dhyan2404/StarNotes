.class public final synthetic Lcom/sunia/HTREnginev2/nce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/functions/CopyOfFn;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/functions/CopyOfFn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nce;->a:Lnet/sf/saxon/functions/CopyOfFn;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nce;->a:Lnet/sf/saxon/functions/CopyOfFn;

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/CopyOfFn;->a(Lnet/sf/saxon/functions/CopyOfFn;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
