.class public Lnet/sf/saxon/functions/IntegratedFunctionCall$ConfigurationCheckingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/IntegratedFunctionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationCheckingFunction"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall$ConfigurationCheckingFunction;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/functions/IntegratedFunctionCall$ConfigurationCheckingFunction;->e:Lnet/sf/saxon/Configuration;

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Node returned by extension function was created with an incompatible Configuration"

    const-string v0, "SXXP0004"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method
