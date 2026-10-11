.class public final synthetic Lcom/sunia/HTREnginev2/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/MessageListener2;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/MessageListener2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l5;->e:Lnet/sf/saxon/s9api/MessageListener2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l5;->e:Lnet/sf/saxon/s9api/MessageListener2;

    check-cast p1, Lnet/sf/saxon/s9api/Message;

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->a(Lnet/sf/saxon/s9api/MessageListener2;Lnet/sf/saxon/s9api/Message;)V

    return-void
.end method
