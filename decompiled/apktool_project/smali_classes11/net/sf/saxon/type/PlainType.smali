.class public interface abstract Lnet/sf/saxon/type/PlainType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ItemType;
.implements Lnet/sf/saxon/type/HyperType;


# virtual methods
.method public abstract getPlainMemberTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTypeName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public abstract matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
.end method
