.class public interface abstract Lnet/sf/saxon/type/ItemType;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/type/TypeHierarchy;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
.end method

.method public abstract getBasicAlphaCode()Ljava/lang/String;
.end method

.method public abstract getDefaultPriority()D
.end method

.method public getFullAlphaCode()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getGenre()Lnet/sf/saxon/om/Genre;
.end method

.method public getNormalizedDefaultPriority()D
    .locals 4

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getDefaultPriority()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public abstract getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
.end method

.method public abstract getPrimitiveType()I
.end method

.method public abstract getUType()Lnet/sf/saxon/type/UType;
.end method

.method public abstract isAtomicType()Z
.end method

.method public abstract isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
.end method

.method public abstract isPlainType()Z
.end method

.method public abstract matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
.end method

.method public toExportString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
