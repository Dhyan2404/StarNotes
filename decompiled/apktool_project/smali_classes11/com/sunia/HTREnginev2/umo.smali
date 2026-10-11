.class public final synthetic Lcom/sunia/HTREnginev2/umo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/style/XSLContextItem;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/style/XSLContextItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/umo;->a:Lnet/sf/saxon/style/XSLContextItem;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/umo;->a:Lnet/sf/saxon/style/XSLContextItem;

    invoke-static {p0, p1}, Lnet/sf/saxon/style/XSLContextItem;->Z(Lnet/sf/saxon/style/XSLContextItem;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
