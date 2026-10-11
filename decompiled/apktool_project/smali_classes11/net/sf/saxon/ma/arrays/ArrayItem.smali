.class public abstract Lnet/sf/saxon/ma/arrays/ArrayItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract arrayLength()I
.end method

.method public abstract concat(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/ma/arrays/ArrayItem;
.end method

.method public abstract get(I)Lnet/sf/saxon/om/GroundedValue;
.end method

.method public final getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ARRAY:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public abstract getMemberType(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/value/SequenceType;
.end method

.method public abstract insert(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;
.end method

.method public final isArray()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract members()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract put(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;
.end method

.method public abstract remove(I)Lnet/sf/saxon/ma/arrays/ArrayItem;
.end method

.method public abstract removeSeveral(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/ma/arrays/ArrayItem;
.end method

.method public abstract subArray(II)Lnet/sf/saxon/ma/arrays/ArrayItem;
.end method

.method public toShortString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    const-string p0, " ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lnet/sf/saxon/om/GroundedValue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
