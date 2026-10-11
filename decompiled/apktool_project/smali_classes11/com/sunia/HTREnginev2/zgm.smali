.class public final synthetic Lcom/sunia/HTREnginev2/zgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/event/SequenceReceiver;

.field public final synthetic b:Lnet/sf/saxon/s9api/Location;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/event/SequenceReceiver;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zgm;->a:Lnet/sf/saxon/event/SequenceReceiver;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zgm;->b:Lnet/sf/saxon/s9api/Location;

    iput p3, p0, Lcom/sunia/HTREnginev2/zgm;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zgm;->a:Lnet/sf/saxon/event/SequenceReceiver;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zgm;->b:Lnet/sf/saxon/s9api/Location;

    iget p0, p0, Lcom/sunia/HTREnginev2/zgm;->c:I

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/event/SequenceReceiver;->a(Lnet/sf/saxon/event/SequenceReceiver;Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V

    return-void
.end method
