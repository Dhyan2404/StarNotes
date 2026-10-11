.class public final synthetic Lcom/sunia/HTREnginev2/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/Configuration;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u4;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u4;->e:Lnet/sf/saxon/Configuration;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lnet/sf/saxon/s9api/Location;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->a(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method
