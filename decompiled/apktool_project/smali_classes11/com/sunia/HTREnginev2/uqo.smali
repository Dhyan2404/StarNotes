.class public final synthetic Lcom/sunia/HTREnginev2/uqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/style/XSLOnEmpty;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/style/XSLOnEmpty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uqo;->a:Lnet/sf/saxon/style/XSLOnEmpty;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uqo;->a:Lnet/sf/saxon/style/XSLOnEmpty;

    invoke-static {p0, p1}, Lnet/sf/saxon/style/XSLOnEmpty;->Z(Lnet/sf/saxon/style/XSLOnEmpty;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
