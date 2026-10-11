.class public Lnet/sf/saxon/s9api/XdmExternalObject;
.super Lnet/sf/saxon/s9api/XdmItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/AnyExternalObject;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/AnyExternalObject;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmItem;-><init>(Lnet/sf/saxon/om/Item;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmExternalObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/s9api/XdmExternalObject;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExternalObject()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AnyExternalObject;

    invoke-interface {p0}, Lnet/sf/saxon/value/AnyExternalObject;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmExternalObject;->getExternalObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
