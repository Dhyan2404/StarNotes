.class public Lcom/sunia/HTREnginev2/gae;
.super Lnet/sf/saxon/s9api/ItemType;
.source "SourceFile"


# instance fields
.field public final b:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/ItemType;-><init>(Lnet/sf/saxon/type/ItemType;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gae;->b:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public c()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gae;->b:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getConversionRules()Lnet/sf/saxon/lib/ConversionRules;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gae;->b:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gae;->b:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0
.end method

.method public subsumes(Lnet/sf/saxon/s9api/ItemType;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gae;->b:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p0

    return p0
.end method
