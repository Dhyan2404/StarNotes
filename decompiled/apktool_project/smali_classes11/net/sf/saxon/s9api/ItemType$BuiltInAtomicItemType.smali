.class public Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;
.super Lnet/sf/saxon/s9api/ItemType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/ItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltInAtomicItemType"
.end annotation


# instance fields
.field public final b:Lnet/sf/saxon/lib/ConversionRules;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/ItemType;-><init>(Lnet/sf/saxon/type/ItemType;)V

    iput-object p2, p0, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;->b:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method

.method public static makeVariant(Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    check-cast p0, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/type/AtomicType;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    check-cast p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0
.end method

.method public getConversionRules()Lnet/sf/saxon/lib/ConversionRules;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;->b:Lnet/sf/saxon/lib/ConversionRules;

    return-object p0
.end method

.method public getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;->c(Lnet/sf/saxon/type/AtomicType;)Z

    move-result p0

    return p0
.end method

.method public subsumes(Lnet/sf/saxon/s9api/ItemType;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;->c(Lnet/sf/saxon/type/AtomicType;)Z

    move-result p0

    return p0
.end method
