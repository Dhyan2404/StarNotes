.class public final synthetic Lcom/sunia/HTREnginev2/f7o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/FilterFactory;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7o;->a:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    return-void
.end method


# virtual methods
.method public final makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7o;->a:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->a(Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method
