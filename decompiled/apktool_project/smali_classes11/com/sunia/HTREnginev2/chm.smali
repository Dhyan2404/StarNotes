.class public final synthetic Lcom/sunia/HTREnginev2/chm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/event/Outputter;

.field public final synthetic b:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/chm;->a:Lnet/sf/saxon/event/Outputter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/chm;->b:Lnet/sf/saxon/s9api/Location;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/chm;->a:Lnet/sf/saxon/event/Outputter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/chm;->b:Lnet/sf/saxon/s9api/Location;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/om/SequenceTool;->c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
