.class public final synthetic Lcom/sunia/HTREnginev2/qym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    check-cast p2, Lnet/sf/saxon/s9api/XdmItem;

    invoke-static {p1, p2}, Lnet/sf/saxon/s9api/streams/Step$d;->a(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method
