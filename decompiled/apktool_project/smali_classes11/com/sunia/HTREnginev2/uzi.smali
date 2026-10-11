.class public final synthetic Lcom/sunia/HTREnginev2/uzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/Literal;

.field public final synthetic b:Lnet/sf/saxon/event/Outputter;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Literal;Lnet/sf/saxon/event/Outputter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uzi;->a:Lnet/sf/saxon/expr/Literal;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uzi;->b:Lnet/sf/saxon/event/Outputter;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uzi;->a:Lnet/sf/saxon/expr/Literal;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uzi;->b:Lnet/sf/saxon/event/Outputter;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/Literal;->e(Lnet/sf/saxon/expr/Literal;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
