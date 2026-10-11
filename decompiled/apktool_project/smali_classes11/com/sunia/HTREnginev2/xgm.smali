.class public final synthetic Lcom/sunia/HTREnginev2/xgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xgm;->a:Lnet/sf/saxon/event/Receiver;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xgm;->a:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;)V

    return-void
.end method
