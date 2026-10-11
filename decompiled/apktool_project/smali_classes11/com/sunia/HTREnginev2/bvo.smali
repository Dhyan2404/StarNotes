.class public final synthetic Lcom/sunia/HTREnginev2/bvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/ma/map/KeyValuePair;

    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmMap$a;->a(Lnet/sf/saxon/ma/map/KeyValuePair;)Lnet/sf/saxon/s9api/XdmAtomicValue;

    move-result-object p0

    return-object p0
.end method
