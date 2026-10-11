.class public final Lnet/sf/saxon/s9api/ItemType$o;
.super Lnet/sf/saxon/s9api/ItemType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/ItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/ItemType;-><init>(Lnet/sf/saxon/type/ItemType;)V

    return-void
.end method


# virtual methods
.method public matches(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public subsumes(Lnet/sf/saxon/s9api/ItemType;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
